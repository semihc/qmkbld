# 
# Convert QMake produced Makefiles to GNU Make compatible Makefiles
# in the source tree.
#
find ${PRJ_ROOT} -name "Makefile" -exec ${PRJ_ROOT}/qmkprj/to_gmake.sh {} \;

