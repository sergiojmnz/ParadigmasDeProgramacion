#include "Coche.h"

#include <iostream>
using namespace std;

Coche::Coche(const int &motor,const int &puertas,const int &ruedas)
{ //inizializar el obbjeto en memoria con los parametros recibidos
	this->motor = 1;
	this->puertas = 2;
	this ->ruedas = 4;
}

void Coche::Imprimir()
{
	cout<<"Motor: "<<motor<<" ruedas: "<<ruedas<<" puertas:"<<puertas<<endl;
}
