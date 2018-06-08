-- This file was automatically generated for the LuaDist project.


package = 'simpleitk'
version = '0.10-0'
-- LuaDist source
source = {
  tag = "0.10-0",
  url = "git://github.com/LuaDist-testing/simpleitk.git"
}
-- Original source
-- source  = {
--     url    = 'https://github.com/SimpleITK/SimpleITKLuaRock/archive/v0.10.zip',
--     dir = 'SimpleITKLuaRock-0.10',
-- }
description = {
    summary  = "A Lua binding to SimpleITK.",
    detailed = '',
    homepage = 'https://github.com/SimpleITK/SimpleITKLuaRock',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build    = {
    type = 'cmake',
    modules = {
        SimpleITK = "SimpleITK-build/Wrapping/Lua/lib/SimpleITK.so",
    },
    variables = {
        INSTALL_CMOD      = "$(LIBDIR)",
        CMAKE_BUILD_TYPE  = "$(CMAKE_BUILD_TYPE)",
        ["CFLAGS:STRING"] = "$(CFLAGS)",
    },
    copy_directories = { "doc", "examples" }
}