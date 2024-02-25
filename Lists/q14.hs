smallest :: Int -> [Int] -> Int
smallest x [] = x
smallest x xs = do
    let first = head xs
    if first < x 
	then smallest first (tail xs)
    else smallest x (tail xs)


main = do
    putStr "Enter list: "
    ll <- getLine
    let l = map read (words ll) :: [Int]
	
    print (smallest (head l) (tail l))
