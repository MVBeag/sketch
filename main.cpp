#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QCoreApplication>
#include "eventfilter.h"

//#include "/home/voegelm/NG2018/dey/2.4-r1/ccimx6ulsbc/dey-image-qt-fb/sysroots/cortexa7hf-neon-dey-linux-gnueabi/usr/include/tslib.h"
//#include <tslib.h>

int main(int argc, char *argv[])
{
    //::setAttribute(Qt::AA_EnableHighDpiScaling);
    //QCoreApplication::setAttribute( Qt::WA_AcceptTouchEvents );

    QGuiApplication app(argc, argv);
//  app.setAttribute(Qt::WA_AcceptTouchEvents);
   // ts_calibrate;
   //evtfilter evt;
    //app.installEventFilter(&evt);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
