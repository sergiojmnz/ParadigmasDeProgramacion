def Menu():
    print("               Calculadora\n"
          "==========================================\n"
          "1.- Suma\n"
          "2.- Resta\n"
          "3.- Multiplicacion\n"
          "4.- Division\n"
          "==========================================\n")
    opc = int(input("Selecciona una opcion: "))
    n1 = int(input("Ingresa un numero: "))
    n2 = int(input("Ingresa un numero: "))
    if opc == 1:
        Suma(n1, n2)
    elif opc == 2:
        Resta(n1, n2)
    elif opc == 3:
        Multiplicacion(n1, n2)
    elif opc == 4:
        Division(n1, n2)

def Suma(n1, n2):
    print("El resultado de la suma es: ", n1 + n2)

def Resta(n1, n2):
    print("El resultado de la resta es: ", n1 - n2)

def Multiplicacion(n1, n2):
    print("El resultado de la multiplicacion es: ", n1 * n2)

def Division(n1, n2):
    print("El resultado de la division es: ", n1 / n2)

if __name__ == "__main__":
    Menu()