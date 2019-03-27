#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QCoreApplication>
#include <QObject>
#include <QQmlEngine>
#include <QQmlContext>
#include <QScreen>
#include <QDebug>
#include <QLoggingCategory>
#include "eventfilter.h"
#include "lamp.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    /*Display the screen size*/
    auto scrs = app.screens();
    for(int i = 0; i<scrs.size();i++){
        qDebug() << scrs[i]->availableGeometry();
    }
    QLoggingCategory::setFilterRules(QStringLiteral("qt.qpa.input = true"));


    lamp lamp_1;

    QQmlApplicationEngine engine;


    /*Lamp creation*/
    engine.rootContext()->setContextProperty("myLamp1", &lamp_1);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

