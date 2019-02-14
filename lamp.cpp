#include "lamp.h"

lamp::lamp(QObject *parent) : QObject(parent)
{

}

void lamp::energy(int energy)
{
    m_energy = energy;
}
