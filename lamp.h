#ifndef LAMP_H
#define LAMP_H

#include <QObject>

class lamp : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int energy READ energy WRITE setEnergy NOTIFY energyChanged)
public:
    explicit lamp(QObject *parent = nullptr);
    void setEnergy(int energy);
    int energy(void);
signals:
    void energyChanged();
public slots:

private:
    int     m_energy;
};

#endif // LAMP_H
