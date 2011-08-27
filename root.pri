#
#
#

isEmpty(QMKBLD_ROOT_INCLUDED) { # include guard
QMKBLD_ROOT_INCLUDED = 1

# Check QMKBLD variable if it is set
isEmpty(QMKBLD) {
  # Fetch QmkBld directory from environment variable
  QMKBLD = $$(QMKBLD)
}
isEmpty(QMKBLD) {
  error(QMKBLD must be set to qmkbld root directory)
}

# Include function definitions
!include($$QMKBLD/qmkfuncs.pri) {
	error($$QMKBLD does not point to qmkbld root)
}

# Check PRJ_ROOT variable if it is set
isEmpty(PRJ_ROOT) {
  # Fetch project root directory from environment variable
  PRJ_ROOT = $$(PRJ_ROOT)
}
isEmpty(PRJ_ROOT) {
  error(PRJ_ROOT must be set to project root directory)
}


isQmkDebug():message(root.pri included)


# Determine our environment
unix {
 QMK_OS_NAME = $$system(/bin/uname -s)
 QMK_OS_REL  = $$system(/bin/uname -r)
 QMK_OS_ARCH = $$system(/bin/uname -p)
}

win32 {
 QMK_OS_NAME = Win32
 QMK_OS_REL  = xp
 QMK_OS_ARCH = i386
}

# Construct platform string
QMK_PLAT = $${QMK_OS_NAME}-$${QMK_OS_REL}-$${QMK_OS_ARCH}

# Store compiler commands
QMK_CC  = $$QMAKE_CC
QMK_CXX = $$QMAKE_CXX

# Construct compiler identifier
QMK_COMP=??
unix {
 contains(QMK_CXX,CC):  QMK_COMP=Sunpro
 contains(QMK_CXX,g++): QMK_COMP=Gcc
 contains(QMK_CXX,icc): QMK_COMP=Intel
}
win32 {
 contains(QMK_CXX,cl):  QMK_COMP=VCpp
 contains(QMK_CXX,icl): QMK_COMP=Intel
}

# Fetch compiler versions
QMK_CC_VER=??
QMK_CXX_VER=??
unix {
  # Sun Studio
  contains(QMK_CC,cc):QMK_CC_VER  = $$system("$$QMK_CC -V 2>&1|awk '/^cc:/{print $4}'")
  contains(QMK_CXX,CC):QMK_CXX_VER = $$system("$$QMK_CXX -V 2>&1|awk '/^CC:/{print $4}'")

  # Gcc
  contains(QMK_CC,gcc):QMK_CC_VER  = $$system("$$QMK_CC --version|awk '/(gcc)/{print $4}'")
  contains(QMK_CXX,g++):QMK_CXX_VER = $$system("$$QMK_CXX --version|awk '/(g\\+\\+)/{print $4}'")
}



# Check QMK_DEBUG variable if it is set 
isEmpty(QMK_DEBUG) {
  # Fetch QMK_DEBUG setting from environment variable
  QMK_DEBUG = $$(QMK_DEBUG)
}



# Are we on Linux?
contains(QMK_OS_NAME,Linux) {
 # Then include Linux specific features
 CONFIG += os_linux
}

# Are we on Sun Solaris?
contains(QMK_OS_NAME,SunOS) {
 # Then include Solaris specific features
 CONFIG += os_sun
}

# Are we on Windows?
contains(QMK_OS_NAME,Win32) {
 # Then include Windows specific features
 CONFIG += os_win
}


# Various trace outputs
isQmkDebug() {
 # Trace PRJ_ROOT setting at qmake execution time
 message(PRJ_ROOT=$$PRJ_ROOT)
 # Platform string
 message(QMK_PLAT=$$QMK_PLAT)
 # Compiler set identifier
 message(QMK_CMP=$$QMK_COMP)
 # Compilers and their versions
 message(QMK_CC=$$QMK_CC QMK_CC_VER=$$QMK_CC_VER)
 message(QMK_CXX=$$QMK_CXX QMK_CXX_VER=$$QMK_CXX_VER)
}


# Standard project directries
PRJ_SRC = $$PRJ_ROOT/src
PRJ_BIN = $$PRJ_ROOT/bin
PRJ_LIB = $$PRJ_ROOT/lib
isQmkDebug() {
 message(PRJ_SRC = $$PRJ_SRC)
 message(PRJ_BIN = $$PRJ_BIN)
 message(PRJ_LIB = $$PRJ_LIB)
}


# Project wide CONFIG options should be set in prjcfg.pri
!include($$PRJ_ROOT/prjcfg.pri) {
  warning(Project configuration file $$PRJ_ROOT/prjcfg.pri is absent)
}

} # end of include guard
