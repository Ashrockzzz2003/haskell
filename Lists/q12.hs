findOdd :: [Int]->[Int]
findOdd xs = do
    [x | x<-xs, (mod x 2) == 1]

main = do
    putStr "Enter list:"
    ll<-getLine
    let l = map read (words ll) :: [Int]
    print(findOdd l)