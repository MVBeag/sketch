#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QCoreApplication>
#include <QObject>
#include <QQmlEngine>
#include <QQmlContext>
#include "eventfilter.h"
#include "lamp.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    lamp lamp_1;

    QQmlApplicationEngine engine;


    /*Lamp creation*/
    engine.rootContext()->setContextProperty("myLamp1", &lamp_1);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
