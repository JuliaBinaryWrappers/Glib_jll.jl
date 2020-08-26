# Autogenerated wrapper script for Glib_jll for armv7l-linux-musleabihf
export libgio, libglib, libgmodule, libgobject, libgthread

using Libiconv_jll
using Libffi_jll
using Gettext_jll
using PCRE_jll
using Zlib_jll
using Libmount_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libgio`
const libgio_splitpath = ["lib", "libgio-2.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgio_path = ""

# libgio-specific global declaration
# This will be filled out by __init__()
libgio_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgio = "libgio-2.0.so.0"


# Relative path to `libglib`
const libglib_splitpath = ["lib", "libglib-2.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libglib_path = ""

# libglib-specific global declaration
# This will be filled out by __init__()
libglib_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libglib = "libglib-2.0.so.0"


# Relative path to `libgmodule`
const libgmodule_splitpath = ["lib", "libgmodule-2.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgmodule_path = ""

# libgmodule-specific global declaration
# This will be filled out by __init__()
libgmodule_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgmodule = "libgmodule-2.0.so.0"


# Relative path to `libgobject`
const libgobject_splitpath = ["lib", "libgobject-2.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgobject_path = ""

# libgobject-specific global declaration
# This will be filled out by __init__()
libgobject_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgobject = "libgobject-2.0.so.0"


# Relative path to `libgthread`
const libgthread_splitpath = ["lib", "libgthread-2.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgthread_path = ""

# libgthread-specific global declaration
# This will be filled out by __init__()
libgthread_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgthread = "libgthread-2.0.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Glib")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Libiconv_jll.PATH_list, Libffi_jll.PATH_list, Gettext_jll.PATH_list, PCRE_jll.PATH_list, Zlib_jll.PATH_list, Libmount_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Libiconv_jll.LIBPATH_list, Libffi_jll.LIBPATH_list, Gettext_jll.LIBPATH_list, PCRE_jll.LIBPATH_list, Zlib_jll.LIBPATH_list, Libmount_jll.LIBPATH_list,))

    global libgio_path = normpath(joinpath(artifact_dir, libgio_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgio_handle = dlopen(libgio_path)
    push!(LIBPATH_list, dirname(libgio_path))

    global libglib_path = normpath(joinpath(artifact_dir, libglib_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libglib_handle = dlopen(libglib_path)
    push!(LIBPATH_list, dirname(libglib_path))

    global libgmodule_path = normpath(joinpath(artifact_dir, libgmodule_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgmodule_handle = dlopen(libgmodule_path)
    push!(LIBPATH_list, dirname(libgmodule_path))

    global libgobject_path = normpath(joinpath(artifact_dir, libgobject_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgobject_handle = dlopen(libgobject_path)
    push!(LIBPATH_list, dirname(libgobject_path))

    global libgthread_path = normpath(joinpath(artifact_dir, libgthread_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgthread_handle = dlopen(libgthread_path)
    push!(LIBPATH_list, dirname(libgthread_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

