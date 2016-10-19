import os
import ycm_core

""" Cpp """
flags = [
    '-x',
    'c++',
    '-std=c++14',
    "-stdlib=libc++",
    "-Wall",
    "-Wextra",
    #"-Weverything",
    #"-Werror",
    "-pedantic",
    "-isystem",
    "/usr/include",
    "-isystem",
    "/usr/local/include",
    #"-isystem",
    #"/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/c++/v1",
    "-isystem",
    "/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/8.0.0/include",
    "-isystem",
    "/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1"
    ]


""" C """
#flags = [
#        '-Wall', '-Wextra', '-Werror',
#        '-std=c99',
#        '-x', 'c',
#        '-I/usr/local/opt/openssl/include'
#        ]



def FlagsForFile(filename, **kwargs):
  return { "flags": flags, "do_cache": False }

