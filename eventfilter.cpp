#include "eventfilter.h"
#include "QKeyEvent"
#include <QDebug>

evtfilter::evtfilter(QObject *parent) : QObject(parent)
{

}

bool evtfilter::eventFilter(QObject *obj, QEvent *event)
{
    qDebug() << event->type();
    if (event->type() == QEvent::KeyPress) {
        QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);
        qDebug("Ate key press %d", keyEvent->key());
        return true;
    } else {
        // standard event processing
        return QObject::eventFilter(obj, event);
    }
}
