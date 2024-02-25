hailstone :: Int -> [Int] 
hailstone 1 = [1]  -- Base case: Hailstone sequence ends when N = 1 
hailstone n 
 | even n    = n : hailstone (n `div` 2) 
 | otherwise = n : hailstone (3 * n + 1)  