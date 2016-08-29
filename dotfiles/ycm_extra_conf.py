import os
import ycm_core

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


def FlagsForFile(filename, **kwargs):
  return { "flags": flags, "do_cache": False }

