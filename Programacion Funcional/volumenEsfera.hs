volumenEsfera :: Float -> Float
volumenEsfera r = (4/3)*pi*r^3
main :: IO ()
main = do
    putStrLn "El volumen de la esfera es:"
    print(volumenEsfera 10)
