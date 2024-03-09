-- Interchange the value of two variables

main :: IO()
main = do
    putStrLn "Enter the first value: "
    x <- getLine
    putStrLn "Enter the second value: "
    y <- getLine
    (x, y) <- return (y, x)
    putStrLn ("[RESULT] " ++ show (x, y))
