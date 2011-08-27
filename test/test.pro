#

# This include is not strictly necessary but
# might be good way to catch errors early
include( $$(QMKBLD)/root.pri )

# Alternatively one can use following setting,
# double inclusions will have no effect.
# However, this usage is discouraged due to late processing of 
# QmkBld scripts
CONFIG += qmkbld

TEMPLATE = subdirs
SUBDIRS = src
