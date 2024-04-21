-- Write a function fml list that returns a 3-tuple with the first, middle and last elements of a list. Assume the list is nonempty and has at least one element. Note : You should not use the !! list indexing operator. Example:

elemAtIndex :: Int -> [a] -> a
elemAtIndex 0 (x:xs) = x
elemAtIndex n (x:xs) = elemAtIndex (n-1) xs

fml :: [a] -> (a, a, a)
fml xs = (head xs, elemAtIndex (div (length xs) 2) xs, last xs)
