include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = lib
CONFIG += static
TARGET = C
DESTDIR = $$PRJ_LIB
DEPENDPATH += . ../lib_a ../lib_b
INCLUDEPATH += . ../lib_a ../lib_b

# Input
HEADERS += C.hh
SOURCES += C.cc
