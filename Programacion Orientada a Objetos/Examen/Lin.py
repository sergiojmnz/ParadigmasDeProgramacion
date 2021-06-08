class Punto:
    cX = 0
    cY = 0

    def __init__(self, cX, cY):
        self.cX = cX
        self.cY = cY


class Linea:
    Punto1 = (0,0)
    Punto2 = (0,0)

    def __init__(self, Punto1 = (Punto,Punto), Punto2 = (Punto,Punto)):
        self.Punto1 = Punto1
        self.Punto2 = Punto2
        print("Posicion inicial: ")
        print("(",self.Punto1.cX,",",Punto1.cY,")")
        print("(",self.Punto2.cX,",", Punto2.cY,")")

    def moverDerecha(self, d):
        print("La posicion de la linea se movio ",d, "posiciones a la derecha")
        self.Punto1.cX += d
        self.Punto2.cX += d
        Linea.mostrar(self)

    def moverIzquierda(self, d):
        print("La posicion de la linea se movio ", d, "posiciones a la izquierda")
        self.Punto1.cX -= d
        self.Punto2.cX -= d
        Linea.mostrar(self)

    def moverArriba(self,d):
        print("La posicion de la linea se movio ", d, "posiciones hacia arriba")
        self.Punto1.cY += d
        self.Punto2.cY += d
        Linea.mostrar(self)

    def moverAbajo(self,d):
        print("La posicion de la linea se movio ", d, "posiciones hacia abajo")
        self.Punto1.cY -= d
        self.Punto2.cY -= d
        Linea.mostrar(self)

    def mostrar(self):
        print("(",self.Punto1.cX,",",self.Punto1.cY,")")
        print("(",self.Punto2.cX,",",self.Punto2.cY,")")


if __name__ == '__main__':
    l = Linea(Punto(6,4),Punto(8,8))
    l.moverDerecha(2)
    l.moverIzquierda(3)
    l.moverArriba(10)
    l.moverAbajo(5)