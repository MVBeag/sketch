#ifndef LAMP_H
#define LAMP_H

#include <QObject>

class lamp : public QObject
{
    Q_OBJECT
public:
    explicit lamp(QObject *parent = nullptr);
    void energy(int energy);
signals:

public slots:

private:
    int     m_energy;
};

#endif // LAMP_H
