#!/usr/bin/env python

# This file is part of OpenCV project.
# It is subject to the license terms in the LICENSE file found in the top-level directory
# of this distribution and at http://opencv.org/license.html
# Copyright (C) 2020 by Archit Rungta

from __future__ import unicode_literals # Needed for python2

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple

import os, shutil

if sys.version_info[0] >= 3:
    from io import StringIO
else:
    from cStringIO import StringIO


from parse_tree import *

mod_template = ""
with open("binding_templates_cpp/cv_core.cpp", "r") as f:
    mod_template = Template(f.read())


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
enums = []
classes = {}
functions = {}
registered_types = ["int", "Size.*", "Rect.*", "Scalar", "RotatedRect", "Point.*", "explicit", "string", "bool", "uchar",
                    "Vec.*", "float", "double", "char", "Mat", "size_t", "RNG", "TermCriteria"]

class ClassInfo(ClassInfo):
    def get_cpp_code_header(self):
        if self.ismap:
            return 'mod.map_type<%s>("%s");\n'%(self.name, self.mapped_name)
        elif not self.base:
            return 'mod.add_type<%s>("%s");\n' % (self.name, self.mapped_name)
        else:
            return 'mod.add_type<%s>("%s", jlcxx::julia_base_type<%s>());\n' % (self.name, self.mapped_name, self.base)

    def get_cpp_code_body(self):
        if self.ismap:
            return ''
        cpp_code = StringIO()
        for cons in self.constructors:
            cons.__class__ = FuncVariant
            cpp_code.write(cons.get_cons_code(self.name, self.mapped_name, self.isalgorithm))
        #add get/set
        cpp_code.write('\n')
        cpp_code.write(self.get_setters())
        cpp_code.write('\n')
        cpp_code.write(self.get_getters())
        cpp_code.write(';')
        return cpp_code.getvalue()

        # return code for functions and setters and getters if simple class or functions and map type

    def get_prop_func_cpp(self, mode, propname):
        return "jlopencv_" + self.mapped_name + "_"+mode+"_"+propname

    def _prop_is_enum(self, prop_tp):
        # prop.tp can appear bare (e.g. nested enum "GridType") or qualified.
        # Compare against the populated `enums` list, trying common qualifications.
        if prop_tp in enums or prop_tp in EXTRA_ENUMS:
            return True
        if ('cv::' + prop_tp) in enums:
            return True
        qualified = self.name + '::' + prop_tp
        if qualified in enums:
            return True
        if qualified.replace('cv::', '') in enums:
            return True
        for e in enums:
            if e.endswith('::' + prop_tp):
                return True
        return False

    def get_getters(self):
        stra = ""
        for prop in self.props:
            cast = '(int)' if self._prop_is_enum(prop.tp) else ''
            if not self.isalgorithm:
                stra = stra + '\nmod.method("%s", [](const %s &cobj) {return %scobj.%s;});' % (self.get_prop_func_cpp("get", prop.name), self.name, cast, prop.name)
            else:
                stra = stra + '\nmod.method("%s", [](const cv::Ptr<%s> &cobj) {return %scobj->%s;});' % (self.get_prop_func_cpp("get", prop.name), self.name, cast, prop.name)
        return stra

    def get_setters(self):
        stra = ""
        for prop in self.props:
            if prop.readonly:
                continue
            if not self.isalgorithm:
                stra = stra + '\nmod.method("%s", [](%s &cobj,const force_enum_int<%s>::Type &v) {cobj.%s=(%s)v;});' % (self.get_prop_func_cpp("set", prop.name), self.name, prop.tp, prop.name, prop.tp)
            else:
                stra = stra + '\nmod.method("%s", [](cv::Ptr<%s> cobj, const force_enum_int<%s>::Type &v) {cobj->%s=(%s)v;});' % (self.get_prop_func_cpp("set", prop.name), self.name, prop.tp, prop.name, prop.tp)
        return stra

class FuncVariant(FuncVariant):

    def get_return(self):
        outstr = ""
        for arg in self.inlist+self.optlist:
            if arg.tp not in pass_by_val_types and arg.tp not in enums and self.promote_type(arg.tp)!=arg.tp:
                outstr = outstr + "%s=%s_down;\n"%(arg.name, arg.name)

        if len(self.outlist)==0:
            return outstr+";"
        elif len(self.outlist)==1:
            return outstr+"return %s;" % ( ('(int64_t)' if self.outlist[0].tp in enums else ('' if self.promote_type(self.outlist[0].tp)==self.outlist[0].tp else '(%s)'%self.promote_type(self.outlist[0].tp))) + self.outlist[0].name)
        return outstr+"return make_tuple(%s);" %  ",".join(["move(%s)" %  (('(int64_t)' if x.tp in enums else  ('' if self.promote_type(x.tp)==x.tp else '(%s)'%self.promote_type(x.tp))) +x.name) for x in self.outlist])

    def promote_type(self, tp):
        if tp=='int':
            return 'int64_t'
        elif tp=='long long':
            return 'int64_t'
        elif tp =='float':
            return 'double'
        return tp

    def get_argument(self, isalgo):
        args = self.inlist + self.optlist
        if self.classname!="" and not self.isconstructor and not self.isstatic:
            if isalgo:
                args = [ArgInfo("cobj", ("cv::Ptr<%s>" % self.classname))] + args
            else:
                args = [ArgInfo("cobj", self.classname)] + args

        argnamelist = []
        for arg in args:
            if arg.tp in pass_by_val_types:
                print("PATHWAY NOT TESTED")
                argnamelist.append(arg.tp[:-1] +"& "+arg.name)
            elif arg.tp in enums:
                argnamelist.append("int64_t& " + arg.name)
            else:
                if arg.tp=='bool':
                    # Bool pass-by-reference is broken
                    argnamelist.append(arg.tp+" " +arg.name)
                else:
                    argnamelist.append(self.promote_type(arg.tp) + "& "+arg.name)
        # argnamelist = [(arg.tp if arg.tp not in pass_by_val_types else arg.tp[:-1]) +"& "+arg.name for arg in args]
        argstr = ", ".join(argnamelist)
        return argstr

    def get_def_outtypes(self):
        outstr = ""
        for arg in self.deflist:
            outstr = outstr + "%s %s;"%(arg.tp if arg.tp not in pass_by_val_types else arg.tp[:-1], arg.name)
        for arg in self.inlist+self.optlist:
            if arg.tp not in pass_by_val_types and arg.tp not in enums and self.promote_type(arg.tp)!=arg.tp:
                outstr = outstr + "%s %s_down=(%s)%s;"%(arg.tp if arg.tp not in pass_by_val_types else arg.tp[:-1], arg.name, arg.tp, arg.name)

        return outstr

    def get_retval(self, isalgo):
        if self.rettype:
            stra = "auto retval = "
        else:
            stra = ""
        arlist = []
        for x in self.args:
            if x.tp in pass_by_val_types:
                arlist.append("&"+x.name)
            elif x.tp in enums:
                arlist.append("(%s)%s" %(x.tp, x.name))
            else:
                if self.promote_type(x.tp) == x.tp:
                    arlist.append(x.name)
                else:
                    if len([y for y in self.inlist+self.optlist if y.name==x.name])>0:
                    # print("ss")
                        arlist.append("%s_down" %(x.name))
                    else:
                        arlist.append(x.name)

        argstr = ", ".join(arlist)
        if self.classname and not self.isstatic:
            stra = stra + "cobj%s%s(%s); " %("->" if isalgo else ".",self.name.split('::')[-1], argstr)
        else:
            stra = stra + "%s(%s);" % (self.name, argstr)
        return stra

    def get_cons_code(self, name, mapped_name, isalgo=False):
        # if self.get_argument(False) == '':
        #     return ''
        arglist = []
        for x in self.args:
            if x.tp in pass_by_val_types:
                arglist.append("&"+x.name)
            elif x.tp in enums:
                arglist.append("(%s)%s" %(x.tp, x.name))
            else:
                if self.promote_type(x.tp) == x.tp:
                    arglist.append(x.name)
                else:
                    # print("ss")
                    arglist.append("%s_down" %(x.name))
        # Classes held by cv::Ptr (Algorithms, and classes made by Ptr factories) take
        # cobj as cv::Ptr<T> in every method, so their constructors must return one too.
        make = 'cv::makePtr' if isalgo else 'jlcxx::create'
        return 'mod.method("%s", [](%s) { %s return %s<%s>(%s);});' % (self.get_wrapper_name(), self.get_argument(False), self.get_def_outtypes(), make, name, " ,".join(arglist))

    def get_complete_code(self, classname, isalgo=False):
        outstr = '.method("%s",  [](%s) {%s %s %s})' % (self.get_wrapper_name(), self.get_argument(isalgo),self.get_def_outtypes(), self.get_retval(isalgo), self.get_return())
        return outstr



def split_module_body(code, max_lines=250):
    """Split the generated module body into functions of at most ~max_lines lines,
    returned as source texts (one per translation unit) plus the calls to them.

    Registering every binding inside one function made GCC 10 run out of memory
    ("cc1plus: out of memory allocating 18446744...") once OpenCV 5 roughly doubled the
    number of bindings. Chunks are cut only between top-level statements, keep their
    order (types are registered before the methods that use them), and open every
    namespace the body opens, as the single function did by its end."""
    lines = code.split('\n')
    usings = []
    for l in lines:
        st = l.strip()
        if st.startswith('using namespace ') and st not in usings:
            usings.append(st)
    chunks, cur, depth = [], [], 0
    for i, l in enumerate(lines):
        cur.append(l)
        depth += l.count('{') - l.count('}')
        nxt = next((x.strip() for x in lines[i + 1:] if x.strip()), '')
        if len(cur) >= max_lines and depth == 0 and l.strip().endswith(';') and not nxt.startswith('.'):
            chunks.append(cur)
            cur = []
    if cur:
        chunks.append(cur)
    assert depth == 0, "unbalanced braces in generated module body"
    parts, calls = [], []
    for n, chunk in enumerate(chunks):
        parts.append('void cv_wrap_part%02d(jlcxx::Module &mod)\n{\n    %s\n%s\n}\n'
                     % (n, '\n    '.join(usings), '\n'.join(chunk)))
        calls.append('cv_wrap_part%02d(mod);' % n)
    return parts, '\n    '.join(calls)


# Enums declared in headers the generator doesn't parse (cv::DataLayout lives in
# core/mat.hpp in OpenCV 5), passed to Julia as integers like parsed enums.
EXTRA_ENUMS = {"DataLayout"}

# Types the parser reports that are plain containers, not wrapped classes.
NOT_WRAPPED_TYPES = {"NativeByteArray", "Range"}  # Range is mirrored (jlcv_types.hpp)

def gen(srcfiles, preprocessor_definitions):
    namespaces, default_values = gen_tree(srcfiles, preprocessor_definitions)
    cpp_code = StringIO()
    include_code = StringIO()
    nsi = sorted(namespaces.items(), key =lambda x: x[0])
    added_methods = set()

    # Pre-populate the `enums` list across all namespaces so the per-namespace
    # `register_types` emission below can filter out enum typedefs. Without this,
    # enum return/arg types (e.g. cv::ORB::ScoreType) leak into `mod.add_type<...>`
    # in the generated C++ — but the Julia side declares them as `const X = Int64`
    # (not a wrapped type), so loading the .so trips CxxWrap's
    # "No appropriate factory for type ..." at @wrapmodule time.
    for _, ns in nsi:
        for e1, e2 in ns.enums.items():
            # Push every form a type can appear in: hdr_parser normalizes arg
            # types via `::` -> `_` and strips `cv::` (see hdr_parser.parse_arg,
            # ~line 385), giving e.g. `ORB_ScoreType`. But parse_tree.py reads
            # `decl[4]` (the *original* return type) into self.rettype, so a
            # nested enum return reaches us as `ORB::ScoreType` (cv:: stripped,
            # `::` preserved). Cover both shapes — plus the fully-qualified
            # form — so `tp in enums` matches in every code path.
            enums.append(e2[0])                                                 # cv::ORB::ScoreType
            enums.append(e2[1])
            enums.append(e2[0].replace("cv::", ""))                             # ORB::ScoreType
            enums.append(e2[0].replace("cv::", "").replace("::", '_'))          # ORB_ScoreType

    # The generated code spells nested and sub-namespace types flattened, the way
    # hdr_parser normalizes them (cv::TrackerVit::Params -> TrackerVit_Params,
    # cv::dnn::Net -> dnn_Net). Declare those names.
    # Nested types are also spelled without their namespace (EdgeDrawing_Params for
    # cv::ximgproc::EdgeDrawing::Params), relying on `using namespace`; declare both
    # spellings unless two different types would claim the same name.
    flat_class_names = set()
    flat_typedefs = {}
    clashes = set()
    def declare(flat, full):
        if flat in flat_typedefs and flat_typedefs[flat] != full:
            clashes.add(flat)
        flat_typedefs[flat] = full
    for nsname_, ns in nsi:
        nsparts = nsname_.split('::')[1:]          # cv::ximgproc -> ['ximgproc']
        for full in list(ns.classes) + [e[0] for e in ns.enums.values()]:
            rel = full.split('::')[1 + len(nsparts):]   # class path inside the namespace
            names = []
            if nsparts:
                names.append('_'.join(nsparts + rel))   # dnn_Net, ximgproc_EdgeDrawing_Params
            if len(rel) > 1:
                names.append('_'.join(rel))             # EdgeDrawing_Params
            for flat in names:
                declare(flat, full)
                if full in ns.classes:
                    flat_class_names.add(flat)
    for flat, full in sorted(flat_typedefs.items()):
        if flat in clashes:
            print("Generator warning: not declaring %s, it names several types" % flat)
            continue
        include_code.write("typedef %s %s;\n" % (full, flat))

    for name, ns in nsi:
        cpp_code.write("using namespace %s;\n" % name.replace(".", "::"))

        if name.split('.')[-1] == '':
            continue
        nsname = name
        nsprefix = '_'.join(nsname.split('::')[1:])

        def sort_classes(classes):
            class_inherits = []
            class_inherits_names = set()
            class_noinherits = []
            parent = {}
            for name, cl in classes:
                if cl.base:
                    class_inherits.append((name, cl))
                    parent[name] = cl.base
                    class_inherits_names.add(name)
                else:
                    class_noinherits.append((name,cl))

            final_order = class_noinherits

            while len(class_inherits)>0:
                for cli in class_inherits:
                    if parent[cli[0]] not in class_inherits_names:
                        final_order.append(cli)
                        class_inherits.remove(cli)
                        class_inherits_names.remove(cli[0])


            return final_order

        sorted_cls = sort_classes(ns.classes.items())
        for name, cl in sorted_cls:
            cl.__class__ = ClassInfo
            cpp_code.write(cl.get_cpp_code_header())
            if cl.base:
                include_code.write("""
template <>
struct SuperType<%s>
{
    typedef %s type;
};
                                    """ % (cl.name.replace('.', '::'), cl.base.replace('.', '::')))

        for tp in ns.register_types:
            if tp in enums:
                continue   # enum typedefs are passed as int64, not wrapped as types
            if tp in flat_class_names or tp in NOT_WRAPPED_TYPES:
                continue   # already wrapped (dnn_Net is cv::dnn::Net) or mapped to a Julia array
            cpp_code.write('   mod.add_type<%s>("%s");\n' %(tp, normalize_class_name(tp)))

    # print(enums)
    for name, ns in sorted(namespaces.items(), key=lambda x: x[0]):  # sorted(): reproducible namespace body order

        nsname = name.replace("::", "_")
        for name, cl in ns.classes.items():
            cl.__class__ = ClassInfo
            cpp_code.write(cl.get_cpp_code_body())
            for mname, fs in cl.methods.items():
                for f in fs:
                    f.__class__ = FuncVariant
                    code = f.get_complete_code(cl.name, cl.isalgorithm)
                    sig = f.get_wrapper_name() + f.get_argument(cl.isalgorithm)
                    if sig not in added_methods:
                        cpp_code.write('\n    mod%s;'  % code)
                        added_methods.add(sig)
            # for f in cl.constructors:
            #     cpp_code.write('\n    %s; \n'  % f.get_cons_code(cl.name, cl.mapped_name))


        for mname, fs in ns.funcs.items():
            for f in fs:
                f.__class__ = FuncVariant
                cpp_code.write('\n    mod%s;' % f.get_complete_code("", False))

        for mapname, name in sorted(ns.consts.items()):
            cpp_code.write('    mod.set_const("%s_%s", (force_enum_int<decltype(%s)>::Type)%s);\n'%(nsname, name, mapname, mapname))
            compat_name = re.sub(r"([a-z])([A-Z])", r"\1_\2", name).upper()
            if name != compat_name:
                cpp_code.write('    mod.set_const("%s_%s", (force_enum_int<decltype(%s)>::Type)%s);\n'%(nsname, compat_name, mapname, mapname))
    for val, nss in default_values:  # already sorted by gen_tree
        # Evaluate the default in the scope of the namespaces it was declared in, so
        # names like AKAZE::DESCRIPTOR_MLDB (cv::xfeatures2d) resolve.
        usings = ''.join('using namespace %s; ' % ns for ns in nss if ns and ns != 'cv')
        cpp_code.write('    mod.method("%s", [](){%sreturn (force_enum_int<decltype(%s)>::Type)(%s);});\n'%(default_function_name(val), usings, val, val))

    # One translation unit per chunk (cv_core_partNN.cpp), each with the template's
    # preamble; cv_core.cpp declares the parts and calls them in order. A single object
    # file with every binding exceeded the PE/COFF section limit on i686 Windows.
    parts, calls = split_module_body(cpp_code.getvalue())
    preamble = Template(mod_template.template[:mod_template.template.index('JLCXX_MODULE')])
    decls = ''.join('void cv_wrap_part%02d(jlcxx::Module &mod);\n' % n for n in range(len(parts)))
    for n, part in enumerate(parts):
        with open('autogen_cpp/cv_core_part%02d.cpp' % n, 'w') as fd:
            fd.write(preamble.substitute(include_code = include_code.getvalue() + part))
    with open ('autogen_cpp/cv_core.cpp', 'w') as fd:
        fd.write(mod_template.substitute(include_code = include_code.getvalue() + decls, cpp_code=calls))



srcfiles = hdr_parser.opencv_hdr_list
if len(sys.argv) > 1:
    srcfiles = [l.strip() for l in sys.argv[1].split(';')]
    
with open(sys.argv[2], "r") as fh:
    config_json = json.load(fh)

gen(srcfiles, config_json['preprocessor_definitions'])
