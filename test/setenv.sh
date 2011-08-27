#
# Necessary environment variables to work QmkBld based projects
#

# QmkBld related variables
QMKBLD=$HOME/qmkbld
QMK_DEBUG=0
QMAKEFEATURES=$QMKBLD/prf
export QMKBLD QMK_DEBUG QMAKEFEATURES

# The project that uses QmkBld 
export PRJ_ROOT=$HOME/qmkbld/test

