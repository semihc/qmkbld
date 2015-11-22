"QMake Build":
Cross platform C++ build system based on Qt qmake

QmkBld is a source only distribution model.
To be able to use it use following environment variable settings.
QMKBLD points to the directory that QMKBLD is installed.
PRJ\_ROOT points to the directory that uses QMKBLD.

```
 # QmkBld related variables
 QMKBLD=$HOME/qmkbld
 QMK_DEBUG=0
 QMAKEFEATURES=$QMKBLD/prf
 export QMKBLD QMK_DEBUG QMAKEFEATURES

 # The project that uses QmkBld 
 export PRJ_ROOT=$HOME/qmkbld/test
```

Also in every pro file use following include qmkbld in qmake files:

```
 include( $$(QMKBLD)/root.pri )
```

Project specific definitions and directives can be set in $PRJ\_ROOT/prjcfg.pri file which is automatically included by qmkbld.

Example use of qmkbld can be found in test subdirectory.
In order to compile it:
```
 qmake -r
 # Use nmake or make for followings
 make 
 make clean
 make distclean
```