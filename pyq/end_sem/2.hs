sumOfProperDivisors :: Int -> Int
sumOfProperDivisors n = sum [x | x <- [1 .. n - 1], mod n x == 0]

isPerfect :: Int -> Bool
isPerfect x
    | x < 2 = False
    | otherwise = x == sumOfProperDivisors x
