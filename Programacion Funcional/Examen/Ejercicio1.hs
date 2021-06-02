cuadrante (x,y)
    | x > 0 && y > 0 = 1
    | x < 0 && y > 0 = 2
    | x < 0 && y < 0 = 3
    | x > 0 && y < 0 = 4
main :: IO ()
main = do
    putStrLn "Funcion cuadrante:"
    print(cuadrante (3,5))
    print(cuadrante (-3,5))
    print(cuadrante (-3,-5))
    print(cuadrante (3,-5))
