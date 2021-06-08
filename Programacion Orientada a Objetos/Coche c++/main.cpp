#include <iostream>
#include "Coche.h"
#include "Puerta.h"
#include "Ventana.h"
#include "Rueda.h"
#include "Motor.h"
using namespace std;
/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main() {
	Coche coche1 = Coche(1, 2, 4);
	coche1.Imprimir();
	
	Puerta p1;
	p1.abrir();
	p1.cerrar();

	Ventana ven;
	ven.abrirVentana();
	ven.cerrarVentana();
	
	Rueda r;
	r.inflarRueda();
	r.desinflarRueda();
	
	Motor m;
	m.arrancar();
	m.apagar();
	return 0;
}
