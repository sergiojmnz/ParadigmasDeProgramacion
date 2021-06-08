import Administrador, Obrero, Intendente


def main():
    print("               Impresa Patito\n"
          "==========================================\n"
          "1.- Administradores\n"
          "2.- Obreros\n"
          "3.- Intendentes\n"
          "==========================================\n")
    opc = int(input("Selecciona un opcion: "))
    if opc == 1:
        print("               Administradores\n"
              "==========================================\n")
        inst = Administrador.Administrado
        inst.listar(inst, inst.administradores)


    if opc == 2:
        print("               Obreros\n"
              "==========================================\n")
        ob = Obrero.Obrero
        ob.listar(ob, ob.obreros)
    if opc == 3:
        print("               Intendentes\n"
              "==========================================\n")
        inten = Intendente.Intendente
        inten.listar(inten, inten.listar)
if __name__ == '__main__':
    main()