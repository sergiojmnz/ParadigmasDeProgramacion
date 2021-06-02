ultimaCifra :: Integer -> Integer
ultimaCifra x = rem x 10
main :: IO ()
main = do
    putStrLn "La ultima cifra es:"
    print(ultimaCifra 666)

