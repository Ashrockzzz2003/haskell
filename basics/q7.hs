-- Simple Interest

simpleInterest :: Float -> Float -> Float -> Float
simpleInterest p n r = p * n * r / 100

main :: IO ()
main = do
    putStrLn "P N R [Space Separated]: "
    input <- getLine
    let [p, n, r] = map read (words input)

    putStrLn ("[RESULT] " ++ show (simpleInterest p n r))
