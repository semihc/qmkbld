include( $$(QMKBLD)/root.pri )

QT -= gui
TEMPLATE = app

TARGET = Q
DESTDIR = $$PRJ_BIN
DEPENDPATH += . ../lib_a ../lib_b ../lib_c
INCLUDEPATH += . ../lib_a ../lib_b ../lib_c
LIBS += -L$$PRJ_LIB -lA -lB -lC

# Input
SOURCES += qmain.cc
