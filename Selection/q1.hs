checkTemp :: Int->String
checkTemp t
        | t>=80 = "Go play golf"
        | t>=70 && t<=79 = "Put on a jacket"
        | otherwise = "It is way too cold"

helper :: [Int]->IO()
helper [] = putStrLn "Enter atleast one value"
helper [x] = putStrLn(checkTemp x)
helper (x:xs) = do
        putStrLn(checkTemp x)
        helper xs

main = do
        putStr "Enter temp in (f):"
        tt<- getLine
        let t = map read(words tt) :: [Int]
        helper t