{-
Write a higher-order procedure called (sum-factorials a b fn next) where a and b are the lower and upper limits of integer type, fn is a function and next is the increment value. sum-factorials must calculate factorials for 

(i) every integer and 
(ii) every alternate integer a in the limit a to b (starting from a). 

Some sample executions of sum-factorials are as follows:                        
   > (sum-factorials 1 3 factorial inc) returns 9 (1! +2! +3!) 
   > (sum-factorials 1 4 factorial inc2) returns 7 (1! +3!) 
-}

factorial :: Int -> Int
factorial n = product [1..n]

sumFactorials :: Int -> Int -> (Int -> Int) -> Int -> Int
sumFactorials a b fn next = sum [fn x | x <- [a, a + next .. b]]

