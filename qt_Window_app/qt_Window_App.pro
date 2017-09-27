QT       += core gui widgets qml quick

TEMPLATE = app
CONFIG += c++11
CONFIG -= app_bundle
# CONFIG -= qt

SOURCES += cpp/main.cpp \
    cpp/mycontext.cpp

HEADERS += \
    cpp/mycontext.h

DISTFILES += \
    qml/main.qml \
    Images/punaise.png \
    qml/script.js \
    qml/Window2.qml
