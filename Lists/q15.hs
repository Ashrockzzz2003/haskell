sumAtOdd :: [Int] -> Int
sumAtOdd xs = sum [x | (i, x) <- zip [1,2..] xs, odd i]

main = do
    putStr "Enter list: "
    ll <- getLine
    let l = map read (words ll) :: [Int]
    print (sumAtOdd l)
