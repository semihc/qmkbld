# 
# Convert QMake produced Makefile to GNU Make Makefile by "in-place"
# editing of the makefile.
#
#find ${PRJ_ROOT}/src -name "Makefile" -exec 
grep 'gmsl/gmsl' $1 >/dev/null
if [ $? -ne 0 ]; then
  gsed -i -f ${PRJ_ROOT}/qmkprj/inc_gmsl.sed -f ${PRJ_ROOT}/qmkprj/inc_deps.sed $1
fi
