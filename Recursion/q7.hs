--Count the number of zeros in a number 
mycountzero:: Int->Int
mycountzero x = countzero x 0
 
countzero:: Int->Int->Int
countzero x c
	| x == 0 = c
	| otherwise = if (mod x 10) == 0 then countzero (div x 10) (c+1) else countzero (div x 10) (c)