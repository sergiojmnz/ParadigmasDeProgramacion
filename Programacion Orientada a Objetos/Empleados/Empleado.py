class Emplead:
    empleados = []
    def __init__(self, nombre, puesto, sueldo, bono, bono2):
        self.nombre = nombre
        self.puesto = puesto
        self.sueldo = sueldo
        self.bono = bool(bono)
        self.bono2 = bono2

    def asignar_bono(self):
        if self.bono:
            print("El empleado", self.nombre, "recibira un bono de: ", self.bono)
        else:
            print("El empleado no recibira ningun bono")

    def guardar_empleado(self, empleados):
        empleados.append(self.nombre, self.sueldo, self.bono)
