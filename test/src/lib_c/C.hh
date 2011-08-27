#ifndef QMKBLD_TEST_C_HH
#define QMKBLD_TEST_C_HH

#include <QObject>
#include <QString>
#include "B.hh"

class C : public QObject, public B
{
  Q_OBJECT

  QString m_str;
  
  public:
  
  C(double d=0.0, int i=0, char c='C')
      : B(d,i,c) {}
  virtual ~C();

 public slots:
  void setStr(QString& s);
  
};

#endif
