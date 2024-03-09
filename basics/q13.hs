-- Find the sum of digits of a 3-digit number

isDigit :: Char -> Bool
isDigit c = c `elem` ['0'..'9']

isThreeDigit :: String -> Bool
isThreeDigit n = length n == 3 && all isDigit n

digitSum :: String -> Int
digitSum n = sum (map (read . return) n)

main :: IO ()
main = do
    putStrLn "Enter a 3-digit number"
    n <- getLine
    if isThreeDigit n
        then print (digitSum n)
        else putStrLn "Invalid input"