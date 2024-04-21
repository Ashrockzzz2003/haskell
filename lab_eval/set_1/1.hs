-- Define a recursive function called twoSame with the type signature twoSame :: [Int] -> Bool, which takes a list and checks whether the lists has more than one occurrence of its members in the list.


twoSame :: [Int] -> Bool
twoSame [] = False
twoSame (x:xs) = elem x xs || twoSame xs
