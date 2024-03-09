-- Find the ASCII value of the given character

import Data.Char

main :: IO ()
main = do
    putStrLn "Enter a character"
    c <- getChar
    putStrLn "The ASCII value is"
    print (ord c)