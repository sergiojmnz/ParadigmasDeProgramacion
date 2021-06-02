sumaMonedas :: Num a => a -> a -> a -> a -> a -> a
sumaMonedas a b c d e = a*1 + b*2 + c*5 + d*10 + e*20
main :: IO ()
main = do
    putStrLn "El resultado es el siguiente:"
    print(sumaMonedas 1 1 1 1 2)