class Punto:
    cX = 0
    cY = 0

    def __init__(self, cX, cY):
        self.cX = cX
        self.cY = cY

class Linea:
    Vertice1 = (0,0)
    Vertice2 = (0,0)
    Vertice3 = (0,0)
    Vertice4 = (0,0)
    Vertice1T2 = (0,0)
    altura = 0
    base = 0
    a2 = 0
    b2 = 0

    def __init__(self, Vertice1 = (Punto,Punto), Vertice2 = (Punto,Punto), Vertice3 = (Punto,Punto), Vertice4 = (Punto,Punto)):
        self.Vertice1 = Vertice1
        self.Vertice2 = Vertice2
        self.Vertice3 = Vertice3
        self.Vertice4 = Vertice4
        print("Vertice 1: (",self.Vertice1.cX,",",Vertice1.cY,")")
        print("Vertice 2: (",self.Vertice2.cX,",", Vertice2.cY,")")
        print("Vertice 3: (", self.Vertice3.cX, ",", Vertice3.cY, ")")
        print("Vertice 4: (", self.Vertice4.cX, ",", Vertice4.cY, ")")

    def triangulo2(self,base, altura, Vertice1T2 = (Punto,Punto)):
        self.base = base
        self.altura = altura
        self.Vertice1T2 = Vertice1T2
        print("El diametro del rectangulo es de: ", self.altura,",",self.base)

    def calcularSuperficie(self):
        self.b2 = self.Vertice2.cX - self.Vertice1.cX
        self.a2 = self.Vertice4.cY - self.Vertice1.cY
        print("Superficie del Rectangulo 1: ", self.b2 * self.a2)
        print("Superficie del Rectangulo 2: ", self.altura * self.base)

    def desplazarRectangulos(self, d):
        print("Ambos rectangulos se desplazaron ", d," posiciones")
        print("Triangulo 1")
        self.Vertice1.cX += d
        self.Vertice1.cY += d
        self.Vertice2.cX += d
        self.Vertice2.cY += d
        self.Vertice3.cX += d
        self.Vertice3.cY += d
        self.Vertice4.cX += d
        self.Vertice4.cY += d
        print("Vertice 1: (",self.Vertice1.cX,",",self.Vertice1.cY,")")
        print("Vertice 2: (", self.Vertice2.cX, ",", self.Vertice2.cY, ")")
        print("Vertice 3: (", self.Vertice3.cX, ",", self.Vertice3.cY, ")")
        print("Vertice 4: (", self.Vertice4.cX, ",", self.Vertice4.cY, ")")
        print("Triangulo 2")
        self.Vertice1T2.cX += d
        self.Vertice1T2.cY =+ d
        print("El vertice interior izquierdo se encuentra en (",self.Vertice1T2.cX,",",self.Vertice1T2.cY,")")

if __name__ == '__main__':
    l = Linea(Punto(1,1),Punto(11,1), Punto(11,6), Punto(1,6))
    l.triangulo2(12,7,Punto(0,0))
    l.calcularSuperficie()
    l.desplazarRectangulos(3)