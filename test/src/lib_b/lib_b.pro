include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = lib
CONFIG += static
TARGET = B
DESTDIR = $$PRJ_LIB
DEPENDPATH += . ../lib_a
INCLUDEPATH += . ../lib_a

# Input
HEADERS += B.hh
SOURCES += B.cc
