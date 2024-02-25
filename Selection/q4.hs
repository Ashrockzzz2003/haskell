checkTri :: Float->Float->Float->String
checkTri a b c
        | (a == b && b == c && a == c) = "Equilateral"
        | (a == b || b == c || a == c) = "Isoceles"
        | otherwise = "Scalene"

main = do
        putStr "Enter side a:"
        aa<-getLine
        let a = read aa :: Float

        putStr "Enter side b:"
        bb<-getLine
        let b = read bb :: Float

        putStr "Enter side c:"
        cc<-getLine
        let c = read cc :: Float

        print(checkTri a b c)