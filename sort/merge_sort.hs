merge :: [Int] -> [Int] -> [Int]
merge [] [] = []
merge l [] = l
merge [] l = l
merge (x:xs) (y:ys)
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort l = merge (mergeSort (take (length l `div` 2) l)) (mergeSort (drop (length l `div` 2) l))
