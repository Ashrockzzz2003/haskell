findlength :: [Integer]->Integer
findlength [] = 0
findlength xs = 1 + (findlength (tail xs))

main = do
    putStr "Enter List:"
    ll<-getLine
    let l = map read (words ll) :: [Integer]
    print(findlength l)