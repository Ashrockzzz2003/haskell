-- Convert the given character to uppercase

import Data.Char

main :: IO ()
main = do
    putStrLn "Enter a character"
    c <- getChar
    putStrLn "The uppercase character is"
    putStrLn [toUpper c]