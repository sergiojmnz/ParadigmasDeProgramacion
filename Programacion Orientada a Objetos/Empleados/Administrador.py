import Empleado

class Administrado(Empleado.Emplead):
    administradores = []

    def __init__(self, nombre, puesto, sueldo, bono, bono2, ventas):
        self.ventas = ventas
        super().__init__(nombre, puesto, sueldo, bono, bono2)

    def totalvendido(self,ventas):
        b = int(ventas) / 100000
        if b > 0:
            self.bono = True
            self.bono = 1000
        else:
            self.bono = False

    def asignar_bono(self):
        super().asignar_bono()

    def listar(self, administradores):
        print("     Nombre     |     Puesto    |    Bono    ")
        for i in administradores:
            print(i.nombre, "| ", i.puesto, "| ", i.bono)

ad = Administrado("israel", "Encargado", 1500, True, 120, 100000)
Administrado.administradores.append(ad)