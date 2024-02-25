--Fibonacci series 
fib :: Int->Int
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2) 


main = do
	putStr "Enter n:"
	nn<- getLine
	let n = read nn :: Int
	print(fib n)