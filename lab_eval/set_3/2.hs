-- Write a higher Order function called “exists” that takes a predicate f and a list xx . The function returns true if takes a predicate f and a list xx and returns true if fx is true for some x∈xs.

exists :: (a -> Bool) -> [a] -> Bool
exists f xs = True `elem` map f xs


