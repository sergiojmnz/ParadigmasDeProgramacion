import Empleado


class Obrero(Empleado.Emplead):
    obreros = []
    def __init__(self,nombre,puesto,sueldo,faltas,turno):
        self.faltas = faltas
        self.turno = turno
        super().__init__(nombre,puesto,sueldo)

    def bono(self):
        if self.faltas == 0:
            self.bono = 300

    def asignar_bono(self):
        super().asignar_bono()

    def descontar(self):
        if self.faltas > 1:
            desc = self.sueldo / 7
            self.sueldo -= desc

    def checar_turno(self):
        print("Ingresa tu hora de entrada: ")
        input(self.turno)

    def guardar_empleado(self, obreros):
        super().guardar_empleado(obreros, self.nombre, self.sueldo, self.bono)

    def listar(self, obreros):
        print("     Nombre     |     Puesto    |    Bono    ")
        for i in obreros:
            print(i.nombre, "      |       ", i.puesto, "      |       ", i.bono)