{-
Write a higher-order procedure called (sum-more-genl a b fn next) where a and b are the lower and upper limits of integer type, fn is a function and next is the increment value. Some sample executions of sum-more-genl are as follows: 
>(sum-more–genl 1 3 square inc) à 14 (where procedures square is defined and procedure inc increments the argument by 1) 
>(sum-more-genl 1 3 factorial sum2) à 7 (where procedure factorial is defined andprocedure sum2 is defined as the argument plus 2)
-}

sumMoreGenl :: Int -> Int -> (Int -> Int) -> Int -> Int
sumMoreGenl a b fn next = sum [fn x | x <- [a, a + next .. b]]
