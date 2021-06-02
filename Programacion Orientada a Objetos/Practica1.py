class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def mostrar(self):
        return "Hola soy " + str(self.nombre) + ", tengo " + str(self.edad) + " años"


class Empleado(Persona):
    def __init__(self, nombre, edad, sueldo_bruto):
        Persona.__init__(self, nombre, edad)
        self.sueldo_bruto = sueldo_bruto

    def calcular_salario_neto(self, sueldo_bruto):
        return sueldo_bruto - 1000


class Cliente(Persona):
    def __init__(self, nombre, edad, nombre_empresa, tel_contacto):
        Persona.__init__(self, nombre, edad)
        self.nombre_empresa = nombre_empresa
        self.tel_contacto = tel_contacto

    def mostrar(self):
        return "Hola soy " + str(self.nombre) + ", tengo " + str(self.edad) + " años, trabajo en " \
               + str(self.nombre_empresa + ", mi numero es " + str(self.tel_contacto))


class Directivo(Empleado):
    def __init__(self, nombre, edad, sueldo_bruto, categoria):
        Empleado.__init__(self, nombre, edad, sueldo_bruto)
        self.categoria = categoria

    def mostrar(self):
        return "Mi nombre es " + str(self.nombre) + ", tengo " + str(self.edad) + \
               " años, mi sueldo bruto es de $" + str(self.sueldo_bruto) + " y pertenezco a la categoria " + str(self.categoria)


class Empresa:
    def __init__(self, nombre_empresa, Empleado, Cliente):
        self.nombre_empresa = nombre_empresa
        self.Empleado = Empleado
        self.Cliente = Cliente

    def agregar_empresa(self):
        return "La persona " + str(self.Cliente.nombre) + " pertenece a la empresa " + str(self.nombre_empresa)


persona1 = Persona("Sergio",22)
print(persona1.mostrar())

empleado1 = Empleado("Jesus", 20, 5000)

cliente1 = Cliente("Israel", 19, "Jumbo Pizzas", 2721342262)
print(cliente1.mostrar())

directivo1 = Directivo("Jahir", 20, 6000, "directivo")
print(directivo1.mostrar())

empresa1 = Empresa("Imbursa", empleado1, cliente1)
print(empresa1.agregar_empresa())