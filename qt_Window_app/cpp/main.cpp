#include <QApplication>
#include <QDebug>
#include <QUrl>
#include <QDir>

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "cpp/mycontext.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine("qml/main.qml");

    MyContext mycontext;
    QQmlContext* ctx= engine.rootContext();
    ctx ->setContextProperty("Context", &mycontext);

    qDebug() << "avant return app.exec dans le main.";

    return app.exec();
}
