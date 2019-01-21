#ifndef EVENTFILTER_H
#define EVENTFILTER_H

#include <QObject>
#include <QEvent>

class evtfilter : public QObject
{
    Q_OBJECT
public:
    explicit evtfilter(QObject *parent = nullptr);

protected:
    bool eventFilter(QObject *obj, QEvent *event) override;

signals:

public slots:
};

#endif // EVENTFILTER_H
