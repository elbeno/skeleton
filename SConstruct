import os

buildType = 'debug'

include = '#export/$BUILDTYPE/include'
lib = '#export/$BUILDTYPE/lib'
bin = '#export/$BUILDTYPE/bin'

env = Environment(BUILDTYPE = buildType,
                  INCDIR = include,
                  LIBDIR = lib,
                  BINDIR = bin,
                  CPPPATH = [include],
                  LIBPATH = [lib])

env.Append(CCFLAGS = "-g -std=c++1y")
env.Append(CCFLAGS = "-stdlib=libc++")
env.Append(LINKFLAGS = "-lc++")
env.Replace(CXX = 'clang++')

env['PROJNAME'] = os.path.basename(Dir('.').srcnode().abspath)
print env['PROJNAME']

Export('env')
env.SConscript('src/SConscript', variant_dir='build/$BUILDTYPE')
