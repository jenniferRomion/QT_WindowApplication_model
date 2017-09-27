#ifndef MYCONTEXT_H
#define MYCONTEXT_H

#include <QObject>
#include <QString>


class MyContext : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString myProperty READ getMyproperty WRITE setMyproperty NOTIFY myPropertyChanged)

public:
    explicit MyContext(QObject *parent = nullptr);

    /* *** fonctions de liasion CPP -> QML *** */
    Q_INVOKABLE void test (QString texte);

signals:

    void myPropertyChanged();
    void sendtoQML (QString texte);

private:

    QString m_myproperty;


public slots:
  void setMyproperty(const QString &myProperty);
  QString getMyproperty() const;

  /* *** fonctions de liaison QML -> CPP *** */
  void receivedFromQMl(QString texte);

};

#endif // MYCONTEXT_H
