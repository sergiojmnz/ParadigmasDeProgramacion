from classes.user import Calculadora


class Menu:
    def __init__(self,opc):
        self.opc = int(opc)


    def mostrar_menu(self):
        print("""
        1.- Operaciones basicas
        2.- Sumar mas de 2 numeros
        3.- Restar mas de 2 numeros
        4.- Multiplicar mas de 2 numeros
        """)

    def menu(self,opc):
        self.opc = int(opc)
        cal = Calculadora
        if opc is 1:



