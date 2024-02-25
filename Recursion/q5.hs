--Sum of n natural numbers 
myNatSum::Int->Int
myNatSum x
	|x <=0 = 0
	|x == 1 = 1
	|otherwise = x + myNatSum(x-1)
	