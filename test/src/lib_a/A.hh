#ifndef QMKBLD_TEST_A_HH
#define QMKBLD_TEST_A_HH

struct A
{
  int   m_i;
  char  m_c;

  A(int i = 0, char c='A') : m_i(i), m_c(c) {}
  ~A();
  
};

#endif
