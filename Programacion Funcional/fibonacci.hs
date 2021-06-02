fibonacci :: Integer -> Integer 
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)
main :: IO()
main = do
	putStrLn "La susesión de fibonacci:"
	print(fibonacci (10))
