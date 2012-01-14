--------------------
        QmkBld
--------------------
"QMake Build":
Cross platform C++ build system based on Qt qmake

http://code.google.com/p/qmkbld/


QmkBld is a source only distribution model
To be able to use it use following environment variable settings.
QMKBLD points to the directory that QMKBLD is installed.
PRJ_ROOT points to the directory that uses QMKBLD.

 # QmkBld related variables
 QMKBLD=$HOME/qmkbld
 QMK_DEBUG=0
 QMAKEFEATURES=$QMKBLD/prf
 export QMKBLD QMK_DEBUG QMAKEFEATURES

 # The project that uses QmkBld 
 export PRJ_ROOT=$HOME/qmkbld/test


Also in every pro file use following include qmkbld in qmake files:

 include( $$(QMKBLD)/root.pri )


Project specific definitions and directives can be set in
 $PRJ_ROOT/prjcfg.pri file which is automatically included by qmkbld.

Example use of qmkbld can be found in test subdirectory.
In order to compile it:
 qmake -r
 # Use nmake or make for followings
 make 
 make clean
 make distclean


Copyright
~~~~~~~~~
Copyright (C) 2012 Semih Cemiloglu

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details (COPYRIGHT.txt).

