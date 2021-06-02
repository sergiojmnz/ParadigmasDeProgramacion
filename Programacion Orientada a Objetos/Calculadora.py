from Menu import *


class Operaciones:
    def __init__(self, n1, n2):
        self.n1 = float(n1)
        self.n2 = float(n2)

    def ope_basicas(self):
        print("Suma: ", self.n1 + self.n2)
        print("Resta: ", self.n1 - self.n2)
        print("Multiplicación: ", self.n1 * self.n2)
        print("División: ", self.n1 / self.n2)



m = Menu

