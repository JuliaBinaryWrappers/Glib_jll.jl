# Autogenerated wrapper script for Glib_jll for armv7l-linux-musleabihf
export libgio, libgirepository, libglib, libgmodule, libgobject, libgthread

using Libiconv_jll
using Libffi_jll
using Gettext_jll
using PCRE2_jll
using Zlib_jll
using Libmount_jll
JLLWrappers.@generate_wrapper_header("Glib")
JLLWrappers.@declare_library_product(libgio, "libgio-2.0.so.0")
JLLWrappers.@declare_library_product(libgirepository, "libgirepository-2.0.so.0")
JLLWrappers.@declare_library_product(libglib, "libglib-2.0.so.0")
JLLWrappers.@declare_library_product(libgmodule, "libgmodule-2.0.so.0")
JLLWrappers.@declare_library_product(libgobject, "libgobject-2.0.so.0")
JLLWrappers.@declare_library_product(libgthread, "libgthread-2.0.so.0")
function __init__()
    JLLWrappers.@generate_init_header(Libiconv_jll, Libffi_jll, Gettext_jll, PCRE2_jll, Zlib_jll, Libmount_jll)
    JLLWrappers.@init_library_product(
        libgio,
        "lib/libgio-2.0.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgirepository,
        "lib/libgirepository-2.0.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libglib,
        "lib/libglib-2.0.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgmodule,
        "lib/libgmodule-2.0.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgobject,
        "lib/libgobject-2.0.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libgthread,
        "lib/libgthread-2.0.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
