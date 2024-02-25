searchForX ::Int-> [Int] -> String
searchForX x [] = "Not found"
searchForX x xs = do
    if (head xs) == x
	then "Found"
	else searchForX x (tail xs)
	
main = do
    putStr "Enter list: "
    ll <- getLine
    let xs = map read (words ll) :: [Int]
    putStr "Enter number to find: "
    xx <- getLine
    let x = read xx :: Int
    print (searchForX x xs)
