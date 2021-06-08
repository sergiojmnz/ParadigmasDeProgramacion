class Operaciones:
    def __init__(self, n1, n2):
        self.n1 = float(n1)
        self.n2 = float(n2)

    def suma(self):
        return "Suma: ", self.n1 + self.n2

    def resta(self):
        return "Resta:  ", self.n1 - self.n2

    def multiplicacion(self):
        return "Multiplicación: ", self.n1 * self.n2

    def division(self):
        return "División: ", self.n1 / self.n2


print("Ingresa 2 numero para hacer las operaciones")
n1 = input()
n2 = input()
op = Operaciones(n1, n2)
print(op.suma())
print(op.resta())
print(op.multiplicacion())
print(op.division())
