import Empleado


class Intendente(Empleado.Emplead):
    intendentes = []
    def __init__(self, nombre, puesto, sueldo, faltas):
        super().__init__(nombre, puesto, sueldo)
        self.faltas = faltas

    def bono(self):
        if self.faltas == 0:
            self.bono = 300

    def asignar_bono(self):
        super().asignar_bono()

    def descontar(self):
        if self.faltas > 1:
            desc = self.sueldo / 7
            self.sueldo -= desc

    def guardar_empleado(self, intendentes):
        super().guardar_empleado(intendentes, self.nombre, self.sueldo, self.bono)

    def listar(self, intendentes):
        print("     Nombre     |     Puesto    |    Bono    ")
        for i in intendentes:
            print(i.nombre, "      |      ", i.puesto, "      |      ", i.bono)