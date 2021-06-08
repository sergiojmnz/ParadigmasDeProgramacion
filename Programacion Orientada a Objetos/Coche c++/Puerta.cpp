#include "Puerta.h"
#include <iostream>
using namespace std;

int ventana = 1;
string lado = "Izquierda";

void Puerta::abrir(){
	cout<<"Se abrio la puerta "<<lado<<endl;
}

void Puerta::cerrar(){
	cout<<"Se cerro la puerta "<<lado<<endl;
}



