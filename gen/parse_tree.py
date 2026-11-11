#!/usr/bin/env python

# This file is part of OpenCV project.
# It is subject to the license terms in the LICENSE file found in the top-level directory
# of this distribution and at http://opencv.org/license.html
# Copyright (C) 2020 by Archit Rungta


import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple
import json
import os, shutil
from io import StringIO


forbidden_arg_types = ["void*"]

ignored_arg_types = ["RNG*"]

pass_by_val_types = ["Point*", "Point2f*", "Rect*", "String*", "double*", "float*", "int*"]


def get_char(c):
    if c.isalpha():
        return c
    if ord(c)%52 < 26:
        return chr(ord('a')+ord(c)%26)
    return chr(ord('A')+ord(c)%26)


def get_var(inp):
    out = ''
    for c in inp:
        out = out+get_char(c)
    return out

def normalize_name(name):
    return name.replace('.', '::')

def normalize_class_name(name):
    _, classes, name = split_decl_name(normalize_name(name))
    return "_".join(classes+[name])

def normalize_full_name(name):
    ns, classes, name = split_decl_name(normalize_name(name))
    return "::".join(ns)+'::'+'_'.join(classes+[name])



def split_decl_name(name):
    chunks = name.split('::')
    namespace = chunks[:-1]
    classes = []
    while namespace and '::'.join(namespace) not in namespaces:
        classes.insert(0, namespace.pop())

    ns = '::'.join(namespace)
    if ns not in namespaces and ns:
        assert(0)

    return namespace, classes, chunks[-1]


def handle_cpp_arg(inp):
    def handle_vector(match):
        return handle_cpp_arg("%svector<%s>" % (match.group(1), match.group(2)))
    def handle_ptr(match):
        return handle_cpp_arg("%sPtr<%s>" % (match.group(1), match.group(2)))
    inp = re.sub("(.*)vector_(.*)", handle_vector, inp)
    inp = re.sub("(.*)Ptr_(.*)", handle_ptr, inp)


    return inp.replace("String", "string")

def get_template_arg(inp):
    inp = inp.replace(' ','').replace('*', '').replace('cv::', '').replace('std::', '')
    def handle_vector(match):
        return get_template_arg("%s" % (match.group(1)))
    def handle_ptr(match):
        return get_template_arg("%s" % (match.group(1)))
    inp = re.sub("vector<(.*)>", handle_vector, inp)
    inp = re.sub("Ptr<(.*)>", handle_ptr, inp)
    ns, cl, n = split_decl_name(inp)
    inp = "::".join(cl+[n])
    # print(inp)
    return inp.replace("String", "string")

def registered_tp_search(tp):
    found = False
    if not tp:
        return True
    for tpx in registered_types:
        if re.findall(tpx, tp):
            found = True
            break
    return found

namespaces = {}
type_paths = {}
enums = {}
classes = {}
functions = {}
registered_types = ["int", "Size.*", "Rect.*", "Scalar", "RotatedRect", "Point.*", "explicit", "string", "bool", "uchar",
                    "Vec.*", "float", "double", "char", "Mat", "size_t", "RNG", "DescriptorExtractor", "FeatureDetector", "TermCriteria"]

class ClassProp(object):
    """
    Helper class to store field information(type, name and flags) of classes and structs
    """
    def __init__(self, decl):
        self.tp = decl[0]
        self.name = decl[1]
        self.readonly = True
        if "/RW" in decl[3]:
            self.readonly = False

mapped_types = {"cv::RotatedRect"}  # Global variable

class ClassInfo(object):
    def __init__(self, name, decl=None):
        self.name = name
        self.mapped_name = normalize_class_name(name)
        self.ismap = (name in mapped_types)  #CV_EXPORTS_W_MAP
        self.isalgorithm = False    #if class inherits from cv::Algorithm
        self.methods = {}   #Dictionary of methods
        self.props = []     #Collection of ClassProp associated with this class
        self.base = None    #name of base class if current class inherits another class
        self.constructors = []  #Array of constructors for this class
        self.add_decl(decl)
        classes[name] = self

    def add_decl(self, decl):
        if decl:
            # print(decl)
            bases = decl[1].split(',')
            if len(bases[0].split()) > 1:
                bases[0] = bases[0].split()[1]

                bases = [x.replace(' ','') for x in bases]
                # print(bases)
                if len(bases) > 1:
                    # Clear the set a bit
                    bases = sorted(set(bases))  # sorted(): deterministic base-class pick across runs
                    bases.remove('cv::class')
                    bases_clear = []
                    for bb in bases:
                        if self.name not in bb:
                            bases_clear.append(bb)
                    bases = bases_clear
                if len(bases) > 1:
                    print("Note: Class %s has more than 1 base class (not supported by CxxWrap)" % (self.name,))
                    print("      Bases: ", " ".join(bases))
                    print("      Only the first base class will be used")
                if len(bases) >= 1:
                    self.base = bases[0].replace('.', '::')
                    if "cv::Algorithm" in bases:
                        self.isalgorithm = True

            for m in decl[2]:
                if m.startswith("="):
                    self.mapped_name = m[1:]
                # if m == "/Map":
                #     self.ismap = True
            self.props = [ClassProp(p) for p in decl[3]]
        # return code for functions and setters and getters if simple class or functions and map type

    def get_prop_func_cpp(self, mode, propname):
        return "jlopencv_" + self.mapped_name + "_"+mode+"_"+propname

# (namespace, type) of every cv::Ptr<type> returned by a wrapped function.
ptr_returned = set()
argumentst = []
# (namespace, C++ default expression) pairs. Each distinct expression becomes a
# C++ function named get_var(expr) returning its value (see gen3_cpp.py), which the
# Julia wrappers call for the default unless defval.txt maps it.
default_values = []

def is_literal_default(v):
    v = v.strip()
    if v in ('true', 'false', '0', '', 'nullptr', 'NULL'):
        return True
    return re.match(r'^[-+]?(\d+\.?\d*|\.\d+)([eE][-+]?\d+)?[fFlLuU]*$', v) is not None

def default_function_name(v):
    """Name of the C++ function returning default v. Expressions keep the historical
    mangled name (defval.txt refers to them); bare identifiers get a prefix, since
    get_var("RANSAC") is "RANSAC" and would clash with the Julia constant RANSAC."""
    if '(' in v or ':' in v:
        return get_var(v)
    return 'jlopencv_default_' + get_var(v)

def needs_default_function(v):
    # Expressions ("Size(8, 8)", "TermCriteria(...)"), qualified names
    # ("AKAZE::DESCRIPTOR_MLDB") and bare constants ("ENGINE_AUTO", "DBL_EPSILON").
    return not is_literal_default(v) and ('"' not in v)
class ArgInfo(object):
    """
    Helper class to parse and contain information about function arguments
    """

    def sec(self, arg_tuple):
        self.isbig =  arg_tuple[0] in ["Mat", "vector_Mat", "cuda::GpuMat", "GpuMat", "vector_GpuMat", "UMat", "vector_UMat"] # or self.tp.startswith("vector")

        self.tp = handle_cpp_arg(arg_tuple[0]) #C++ Type of argument
        argumentst.append(self.tp)
        self.name = arg_tuple[1] #Name of argument
        # TODO: Handle default values nicely
        self.default_value = arg_tuple[2] #Default value
        self.inputarg = True #Input argument
        self.outputarg = False #output argument
        self.ref = False

        for m in arg_tuple[3]:
            if m == "/O":
                self.inputarg = False
                self.outputarg = True
            elif m == "/IO":
                self.inputarg = True
                self.outputarg = True
            elif m == '/Ref':
                self.ref = True

        if self.tp in pass_by_val_types:
            self.outputarg = True



    def __init__(self, name, tp = None):
        if not tp:
            self.sec(name)
        else:
            self.name = name
            self.tp = tp


class FuncVariant(object):
    """
    Helper class to parse and contain information about different overloaded versions of same function
    """
    def __init__(self, classname, name, mapped_name, decl, namespace, istatic=False):
        self.classname = classname
        self.name = name
        self.mapped_name = mapped_name

        self.isconstructor = name.split('::')[-1]==classname.split('::')[-1]
        self.isstatic = istatic
        self.namespace = namespace

        self.rettype = decl[4]
        if self.rettype == "void" or not self.rettype:
            self.rettype = ""
        else:
            self.rettype = handle_cpp_arg(self.rettype)

        self.args = []

        for ainfo in decl[3]:
            a = ArgInfo(ainfo)
            if a.default_value and needs_default_function(a.default_value):
                default_values.append((namespace, a.default_value))
            assert not a.tp in forbidden_arg_types, 'Forbidden type "{}" for argument "{}" in "{}" ("{}")'.format(a.tp, a.name, self.name, self.classname)
            if a.tp in ignored_arg_types:
                continue

            self.args.append(a)
        self.init_proto()

        if name not in functions:
            functions[name]= []
        functions[name].append(self)

        if not registered_tp_search(get_template_arg(self.rettype)):
            namespaces[namespace].register_types.append(get_template_arg(self.rettype))
        for arg in self.args:
            if not registered_tp_search(get_template_arg(arg.tp)):
                namespaces[namespace].register_types.append(get_template_arg(arg.tp))


    def get_wrapper_name(self):
        """
        Return wrapping function name
        """
        name = self.name.replace('::', '_')
        if self.classname:
            classname = self.classname.replace('::', '_') + "_"
        else:
            classname = ""
        return "jlopencv_" + self.namespace.replace('::','_') + '_' + classname + name


    def init_proto(self):
        # string representation of argument list, with '[', ']' symbols denoting optional arguments, e.g.
        # "src1, src2[, dst[, mask]]" for cv.add
        prototype = ""

        inlist = []
        optlist = []
        outlist = []
        deflist = []
        biglist = []

# This logic can almost definitely be simplified

        for a in self.args:
            if a.isbig and not (a.inputarg and not a.default_value):
                optlist.append(a)
            if a.outputarg:
                outlist.append(a)
            if a.inputarg and not a.default_value:
                inlist.append(a)
            elif a.inputarg and a.default_value and not a.isbig:
                optlist.append(a)
            elif not (a.isbig and not (a.inputarg and not a.default_value)):
                deflist.append(a)

        if self.rettype:
            outlist = [ArgInfo("retval", self.rettype)] + outlist

        if self.isconstructor:
            assert outlist == [] or outlist[0].tp ==  "explicit"
            outlist = [ArgInfo("retval", self.classname)]


        self.outlist = outlist
        self.optlist = optlist
        self.deflist = deflist

        self.inlist = inlist

        self.prototype = prototype

class NameSpaceInfo(object):
    def __init__(self, name):
        self.funcs = {}
        self.classes = {} #Dictionary of classname : ClassInfo objects
        self.enums = {}
        self.consts = {}
        self.register_types = []
        self.name = name

def add_func(decl):
    """
    Creates functions based on declaration and add to appropriate classes and/or namespaces
    """
    decl[0] = decl[0].replace('.', '::')
    namespace, classes, barename = split_decl_name(decl[0])
    name = "::".join(namespace+classes+[barename])
    full_classname = "::".join(namespace + classes)
    classname = "::".join(classes)
    namespace = '::'.join(namespace)
    is_static = False
    isphantom = False
    mapped_name = ''

    for m in decl[2]:
        if m == "/S":
            is_static = True
        elif m == "/phantom":
            print("phantom not supported yet ")
            return
        elif m.startswith("="):
            mapped_name = m[1:]
        elif m.startswith("/mappable="):
            print("Mappable not supported yet")
            return
        # if m == "/V":
        #     print("skipping ", name)
        #     return

    if classname:
        qualify_nested_types(decl, full_classname)
    m = re.match(r'^(?:cv::)?Ptr<(.+)>$', (decl[4] if len(decl) > 4 else '') or '')
    if m:
        ptr_returned.add((namespace, m.group(1).replace('.', '::')))

    if classname and full_classname not in namespaces[namespace].classes:
        # print("HH1")
        # print(namespace, classname)
        namespaces[namespace].classes[full_classname] = ClassInfo(full_classname)
        assert(0)


    if is_static:
        # Add it as global function
        func_map = namespaces[namespace].funcs
        if name not in func_map:
            func_map[name] = []
        # Static methods are free functions prefixed with their class (DISK_create);
        # keep the prefix for CV_WRAP_AS renames too, or DISK::createFromMemory and
        # XFeat::createFromMemory collide.
        mapped_name = "_".join(classes + [mapped_name or barename])
        func_map[name].append(FuncVariant("", name, mapped_name, decl, namespace, True))
    else:
        if classname:
            func = FuncVariant(full_classname, name, barename, decl, namespace, False)
            if func.isconstructor:
                namespaces[namespace].classes[full_classname].constructors.append(func)
            else:
                func_map = namespaces[namespace].classes[full_classname].methods
                if name not in func_map:
                    func_map[name] = []
                func_map[name].append(func)
        else:
            func_map = namespaces[namespace].funcs
            if name not in func_map:
                func_map[name] = []
            if not mapped_name:
                mapped_name = barename
            func_map[name].append(FuncVariant("", name, mapped_name, decl, namespace, False))


def qualify_nested_types(decl, full_classname):
    """Inside a class, C++ names its nested types unqualified (Stitcher::create(Mode)).
    Rewrite such argument/return types to the parser's flattened form (Stitcher_Mode) so
    nested enums are passed as integers and nested classes resolve to their typedefs."""
    ns, cls, bare = split_decl_name(full_classname)
    cls = cls + [bare]   # split_decl_name returns the class itself as the bare name
    def qualify(tp):
        if not tp or not re.match(r'^[A-Za-z_][A-Za-z0-9_]*$', tp):
            return tp
        for depth in range(len(cls), 0, -1):  # innermost enclosing class first
            cand = '::'.join(ns + cls[:depth] + [tp])
            if cand in enums or cand in namespaces['::'.join(ns)].classes:
                return '_'.join(cls[:depth] + [tp])
        return tp
    for a in decl[3]:
        a[0] = qualify(a[0])
    decl[1] = qualify(decl[1])
    if len(decl) > 4:
        decl[4] = qualify(decl[4])


def add_class(stype, name, decl):
    """
    Creates class based on name and declaration. Add it to list of classes and to JSON file
    """
    # print("n", name)
    name = name.replace('.', '::')
    classinfo = ClassInfo(name, decl)
    namespace, classes, barename = split_decl_name(name)
    namespace = '::'.join(namespace)

    if classinfo.name in classes:
        namespaces[namespace].classes[name].add_decl(decl)
    else:
        namespaces[namespace].classes[name] = classinfo



def add_const(name, decl, tp = ''):
    name = name.replace('.','::')
    namespace, classes, barename = split_decl_name(name)
    namespace = '::'.join(namespace)
    mapped_name = '_'.join(classes+[barename])
    ns = namespaces[namespace]
    if mapped_name in ns.consts:
        print("Generator error: constant %s (name=%s) already exists" \
            % (name, name))
        sys.exit(-1)
    ns.consts[name] = mapped_name

def add_enum(name, decl):
    name = name.replace('.', '::')
    mapped_name = normalize_class_name(name)
    # print(name)
    if mapped_name.endswith("<unnamed>"):
        mapped_name = None
    else:
        enums[name.replace(".", "::")] = mapped_name
    const_decls = decl[3]

    if mapped_name:
        namespace, classes, name2 = split_decl_name(name)
        namespace = '::'.join(namespace)
        mapped_name = '_'.join(classes+[name2])
        # print(mapped_name)
        namespaces[namespace].enums[name] = (name.replace(".", "::"),mapped_name)

    for decl in const_decls:
        name = decl[0]
        add_const(name.replace("const ", "", ).strip(), decl, "int")



def gen_tree(srcfiles, preprocessor_definitions):
    parser = hdr_parser.CppHeaderParser(generate_umat_decls=False, generate_gpumat_decls=False, preprocessor_definitions=preprocessor_definitions)

    allowed_func_list = []

    # One dotted name per line; blank lines and '#' comments are ignored.
    with open("funclist.csv", "r") as f:
        allowed_func_list = [x.strip() for x in f]
    allowed_func_list = set(x for x in allowed_func_list if x and not x.startswith('#'))


    count = 0
    # step 1: scan the headers and build more descriptive maps of classes, consts, functions
    for hdr in srcfiles:
        decls = parser.parse(hdr)
        for ns in sorted(parser.namespaces):  # sorted(): hdr_parser.namespaces is a set; sort for reproducible order
            ns = ns.replace('.', '::')
            if ns not in namespaces:
                namespaces[ns] = NameSpaceInfo(ns)
        count += len(decls)
        if len(decls) == 0:
            continue
        if hdr.find('opencv2/') >= 0: #Avoid including the shadow files
            # code_include.write( '#include "{0}"\n'.format(hdr[hdr.rindex('opencv2/'):]) )
            pass
        for decl in decls:
            name = decl[0]
            if name.startswith("struct") or name.startswith("class"):
                # class/struct
                p = name.find(" ")
                stype = name[:p]
                name = name[p+1:].strip()
                add_class(stype, name, decl)
            elif name.startswith("const"):
                # constant
                assert(0)
                add_const(name.replace("const ", "").strip(), decl)
            elif name.startswith("enum"):
                # enum
                add_enum(name.rsplit(" ", 1)[1], decl)
            else:
                # function
                if decl[0] in allowed_func_list:
                    add_func(decl)
    # step 1.5 check if all base classes exist
    # print(classes)
    for name, classinfo in classes.items():
        if classinfo.base:
            base = classinfo.base
            # The parser qualifies a base with the derived class's namespace
            # (cv::xphoto::Tonemap for `class TonemapDurand : public Tonemap`), but
            # C++ looks it up in the enclosing namespaces too (cv::Tonemap). Do the same.
            parts = base.split('::')
            while base not in classes and len(parts) > 2:
                parts = parts[:-2] + parts[-1:]
                base = '::'.join(parts)
            if base not in classes:
                print("Generator error: unable to resolve base %s for %s"
                    % (classinfo.base, classinfo.name))
                sys.exit(-1)
            base_instance = classes[base]
            classinfo.base = base
            classinfo.isalgorithm |= base_instance.isalgorithm  # wrong processing of 'isalgorithm' flag:
                                                                # doesn't work for trees(graphs) with depth > 2
            classes[name] = classinfo

    # A class handed out as cv::Ptr<T> by a factory (Stitcher::create, TrackerMIL::create,
    # ml::TrainData::create) must be held by Ptr in Julia, like an Algorithm: its methods
    # take cobj as cv::Ptr<T>. Otherwise the factory's result can't be passed to them.
    for ns_, tp in ptr_returned:
        for cand in (ns_ + '::' + tp, 'cv::' + tp, tp):
            if cand in classes:
                c = classes[cand]
                while c is not None and not c.isalgorithm:   # bases too: Tracker::init
                    c.isalgorithm = True
                    c = classes.get(c.base) if c.base else None
                break

    # tree-based propagation of 'isalgorithm'
    processed = dict()
    def process_isalgorithm(classinfo):
        if classinfo.isalgorithm or classinfo in processed:
            return classinfo.isalgorithm
        res = False
        if classinfo.base:
            res = process_isalgorithm(classes[classinfo.base])
            #assert not (res == True or classinfo.isalgorithm is False), "Internal error: " + classinfo.name + " => " + classinfo.base
            classinfo.isalgorithm |= res
            res = classinfo.isalgorithm
        processed[classinfo] = True
        return res
    for name, classinfo in classes.items():
        process_isalgorithm(classinfo)

    for name, ns in namespaces.items():
        if name.split('.')[-1] == '':
            continue
        ns.registered = []
        for name, cl in ns.classes.items():
            registered_types.append(get_template_arg(name))
            ns.registered.append(cl.mapped_name)
            nss, clss, bs = split_decl_name(name)
            type_paths[bs] = [name.replace("::", ".")]
            type_paths["::".join(clss+[bs])] = [name.replace("::", ".")]


        for e1,e2 in ns.enums.items():
            registered_types.append(get_template_arg(e2[0]))
            registered_types.append(get_template_arg(e2[0]).replace('::', '_')) #whyyy typedef
            ns.registered.append(e2[1])

        ns.register_types = sorted(set(ns.register_types))  # sorted(): reproducible add_type/register order
        ns.register_types = [tp for tp in ns.register_types if not registered_tp_search(tp) and not tp in ns.registered]
        for tp in ns.register_types:
            registered_types.append(get_template_arg(tp))
            ns.registered.append(get_template_arg(tp))
    # expression -> sorted namespaces it is used in (for `using namespace` in C++).
    default_valuesr = {}
    for ns, v in default_values:
        default_valuesr.setdefault(v, set()).add(ns)
    default_valuesr = [(v, sorted(nss)) for v, nss in sorted(default_valuesr.items())]  # sorted(): reproducible order
        # registered_types = registered_types + ns.register_types
    return namespaces, default_valuesr
