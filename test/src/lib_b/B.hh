#ifndef QMKBLD_TEST_B_HH
#define QMKBLD_TEST_B_HH

#include "A.hh"

class B : public A
{
 public:
  double m_d;
  
  B(double d=0.0, int i=0, char c='B')
      : A(i,c), m_d(d) {}
  virtual ~B();
  
};

#endif
