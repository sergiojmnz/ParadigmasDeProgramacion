aplica :: (a -> b) -> [a] -> [b]
aplica f [] = []
aplica f (x:xs) = f x : aplica f xs

main = do
putStrLn "El descuento es:"

