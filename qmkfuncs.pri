#
#
#

isEmpty(QMKFUNCS_INCLUDED) { # include guard
QMKFUNCS_INCLUDED = 1

#
# Is Qmk debug logging enabled?
# isQmkDebug:...
#
defineTest(isQmkDebug) {
  isEmpty(QMK_DEBUG):return(false)
  contains(QMK_DEBUG,0):return(false)
  return(true)
}


#
# Is Qmk debug level is same or greater than given level?
# isQmkDebugLevel(9):...
#
defineTest(isQmkDebugLevel) {
  list = 0 1 2 3 4 5 6 7 8 9
  for(i, list) {
    lvls += $$i
    contains(lvls,$$QMK_DEBUG) {
      # Constructed the current debug level list
      contains(lvls, $$1) {
        return(true)
      }
      else {
        return(false)
      }
    }   
  }
  return(false)
}

} # end of include guard

