aliquotSum :: Int -> Int
aliquotSum n
    | n <= 0 = -1
    | otherwise = sum [x | x <- [1 .. n - 1], mod n x == 0]

classify :: Int -> String
classify n
    | n <= 0 = "Invalid n"
    | aliquotSum n < n = "Deficient"
    | aliquotSum n == n = "Perfect"
    | otherwise = "Abundant"
