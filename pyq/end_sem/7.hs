maxPairProduct :: [Int] -> Int
maxPairProduct xs = maximum [x*y | x <- xs, y <- xs, x /= y]

