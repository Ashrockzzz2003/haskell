-- Write a function rotabc that changes a's to b's, b's to c's and c's to a's in a string. Only lowercase letters are affected. Using higher order functions.

import Data.Char

rotate :: Char -> Char
rotate c
    | c == 'a' = 'b'
    | c == 'b' = 'c'
    | c == 'c' = 'a'
    | otherwise = c

rotabc :: String -> String
rotabc = map rotate

