quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (x:xs) = quickSort [y | y <- xs, y <= x] ++ [x] ++ quickSort [y | y <- xs, y > x]
