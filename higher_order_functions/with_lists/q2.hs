{-
Write a Haskell program only using recursion without higher-order function and list comprehension with the function largeTuples whose arguments are max and list of   tuples which produces a list of the tuples whose sum is larger than max, i.e., for a tuple (a,b), a + b > max.
-}

largeTuples :: Int -> [(Int, Int)] -> [(Int, Int)]
largeTuples max xs = [(a, b) | (a, b) <- xs, a + b > max]

largeTuplesRecursive :: Int -> [(Int, Int)] -> [(Int, Int)]
largeTuplesRecursive max [] = []
largeTuplesRecursive max (x:xs)
    | uncurry (+) x > max = x : largeTuplesRecursive max xs
    | otherwise = largeTuplesRecursive max xs

