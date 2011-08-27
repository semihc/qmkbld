include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = app

TARGET = Z
DESTDIR = $$PRJ_BIN
DEPENDPATH += . ../lib_a ../lib_b
INCLUDEPATH += . ../lib_a ../lib_b
LIBS += -L$$PRJ_LIB -lA -lB

# Input
SOURCES += main.cc
