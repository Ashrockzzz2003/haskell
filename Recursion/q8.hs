--Find base exponent using recursion 
-- mybase 2 3 -> 2 ^ 3-> 2 * 2 * 2

mybase :: Int->Int->Int
mybase n 0 = 1
mybase n 1 = n
mybase n e = n * (mybase n (e-1))