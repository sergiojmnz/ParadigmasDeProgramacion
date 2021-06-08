#ifndef COCHE_H
#define COCHE_H
#include <iostream>
using namespace std;

class Coche
{
	private:
		int motor;
		int puertas; 
		int ruedas;
	public:
		Coche(const int &motor, const int &puertas, const int &ruedas);
		void Imprimir();
};

#endif
