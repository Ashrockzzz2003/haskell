sumEven :: [Int]->Int
sumEven xs = do
    sum [x |x<- xs, even x ]

main = do
    putStr "Enter list:"
    ll<-getLine
    let l = map read (words ll) :: [Int]
    print(sumEven l)