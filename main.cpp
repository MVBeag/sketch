#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QCoreApplication>
#include "eventfilter.h"
#include "lamp.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    /*Lamp creation*/
    lamp lamp_1;

    return app.exec();
}
