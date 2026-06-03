#!/usr/bin/env julia
#
# Regenerate the Julia wrapper bindings in ../src/generated/ from a pinned OpenCV
# release, using the vendored generator in this directory.
#
#     julia gen/regenerate.jl
#
# Requires `git` and `python3` on PATH. No OpenCV build is needed — generation
# parses C++ headers only. Output is deterministic: it depends solely on the
# pinned OpenCV source (gen/OPENCV_VERSION), the module list (gen/MODULE_LIST),
# the preprocessor config (gen/gen_python_config.json), and this generator. The
# generator was made hash-seed independent (see PROVENANCE.md); PYTHONHASHSEED is
# pinned below as a belt-and-suspenders guard.
#
# On an OpenCV version bump: update gen/OPENCV_VERSION, refresh
# gen/gen_python_config.json if MODULE_LIST changed, run this script, and review
# the diff in ../src/generated/. CI runs this and fails on any uncommitted diff.

const GEN = @__DIR__
const SRC_GENERATED = normpath(joinpath(GEN, "..", "src", "generated"))

read_kv(path) = begin
    d = Dict{String,String}()
    for line in eachline(path)
        s = strip(line)
        (isempty(s) || startswith(s, "#")) && continue
        occursin('=', s) || continue
        k, v = split(s, '='; limit=2)
        d[strip(k)] = strip(v)
    end
    d
end

read_list(path) = [strip(l) for l in eachline(path)
                    if !isempty(strip(l)) && !startswith(strip(l), "#")]

function main()
    pins = read_kv(joinpath(GEN, "OPENCV_VERSION"))
    modules = read_list(joinpath(GEN, "MODULE_LIST"))
    commit = pins["opencv_commit"]
    version = get(pins, "version", "?")

    work = mktempdir()
    try
        opencv = joinpath(work, "opencv")
        @info "Fetching opencv" version commit
        run(`git init -q $opencv`)
        run(`git -C $opencv fetch -q --depth 1 https://github.com/opencv/opencv.git $commit`)
        run(`git -C $opencv checkout -q FETCH_HEAD`)

        # Run in an isolated copy so we never mutate the committed toolkit. Use the
        # pinned opencv's hdr_parser so the parser always matches the headers.
        rundir = joinpath(work, "gen")
        cp(GEN, rundir)
        cp(joinpath(opencv, "modules", "python", "src2", "hdr_parser.py"),
           joinpath(rundir, "hdr_parser.py"); force=true)

        cfg = joinpath(rundir, "gen_python_config.json")
        modpath = joinpath(opencv, "modules")
        cmd = `python3 gen_all.py $modpath $cfg $modules`
        @info "Generating wrappers" cmd
        run(setenv(addenv(cmd, "PYTHONHASHSEED" => "0"); dir=rundir))

        autogen = joinpath(rundir, "autogen_jl")
        rm(SRC_GENERATED; recursive=true, force=true)
        mkpath(SRC_GENERATED)
        n = 0
        for f in sort(readdir(autogen))
            endswith(f, "wrap.jl") || continue   # generated bindings only
            cp(joinpath(autogen, f), joinpath(SRC_GENERATED, f))
            n += 1
        end
        @info "Wrote $n wrapper files to src/generated/"
    finally
        rm(work; recursive=true, force=true)
    end
end

main()
