--11. A Haskell function finds the product of elements of a list.
prodList ::Int-> [Int]->Int
prodList x xs = do
    if xs == []
	then x
	else prodList (x * head xs) (tail xs)
	
main = do
    putStr "Enter list:"
    ll<-getLine
    let l = map read (words ll) :: [Int]
    print(prodList 1 l)