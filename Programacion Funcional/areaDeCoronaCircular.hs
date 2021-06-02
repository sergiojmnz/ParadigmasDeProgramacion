areaDeCorona :: Float -> Float -> Float
areaDeCorona r1 r2 = pi*(r2^2 -r1^2)
main :: IO ()
main = do
    putStrLn "El area de corona circular es:"
    print(areaDeCorona 1 2)
    print(areaDeCorona 2 5)
