--Sum of digits
mydigitsum::Int->Int
mydigitsum x
	|x <=0 = 0

	|otherwise = (mod x 10) + (mydigitsum (div x 10))
	