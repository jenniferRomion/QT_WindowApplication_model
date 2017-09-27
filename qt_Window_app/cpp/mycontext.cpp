#include "mycontext.h"

#include <QApplication>
#include <QDebug>


MyContext::MyContext(QObject *parent) : QObject(parent)
{

}


/* *** Fonctions QML -> CPP et CPP -> QML *** */

void MyContext::test(QString texte)
{
    qDebug() << "test ok";
}


void MyContext::receivedFromQMl(QString texte)
{
    qDebug() << texte;
}


/* *** Gestion de QPROPERTY *** */

void MyContext::setMyproperty(const QString &myProperty)
{
    if (myProperty != m_myproperty){
        m_myproperty = myProperty;
        emit myPropertyChanged();
    }
}

QString MyContext::getMyproperty() const
{
    return m_myproperty;
}



