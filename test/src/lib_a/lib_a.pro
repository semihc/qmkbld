include( $$(QMKBLD)/root.pri )
QT -= gui
TEMPLATE = lib
CONFIG += static
TARGET = A
DESTDIR = $$PRJ_LIB
DEPENDPATH += .
INCLUDEPATH += .

# Input
HEADERS += A.hh
SOURCES += A.cc
