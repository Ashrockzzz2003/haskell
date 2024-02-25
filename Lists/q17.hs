showAllAfterX :: Int -> [Int] -> [Int]
showAllAfterX x [] = []
showAllAfterX x xs = do
    if head xs == x
	then tail xs
	else showAllAfterX x (tail xs)

main = do
    putStr "Enter list :"
    ll <- getLine
    let xs = map read (words ll) :: [Int]
	
    putStr "Enter element: "
    xx <- getLine
    let x = read xx :: Int
	
    print (showAllAfterX x xs)