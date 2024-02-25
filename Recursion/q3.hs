prod :: [Int] -> Int
prod [] = 1
prod [x] = x
prod (x:xs) = x * (prod xs)

main = do
    putStrLn "Enter list:"
    input <- getLine
    let list = map read (words input) :: [Int]
    print (prod list)
