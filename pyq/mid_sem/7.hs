twoSame :: [Int] -> Bool
twoSame [] = False
twoSame (x:xs) = elem x xs || twoSame xs