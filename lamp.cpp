#include "lamp.h"

lamp::lamp(QObject *parent) : QObject(parent)
{
 m_energy = 25;
}

void lamp::setEnergy(int energy)
{
    if(m_energy != energy)
    {
        m_energy = energy;
        emit energyChanged();
    }
}

int lamp::energy(void)
{
    return m_energy;
}
