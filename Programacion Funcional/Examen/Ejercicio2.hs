mayor (a,b) (c,d) 
    | a*b >= c*d = (a,b)
    | otherwise = (c,d)
main :: IO ()
main = do
    putStrLn "Mamarre :"
    putStrLn "Odio Mendoza"
    print(mayor (4,6) (3,7))
    print(mayor(4,6) (3,8))
    print(mayor (4,6) (3,9))
