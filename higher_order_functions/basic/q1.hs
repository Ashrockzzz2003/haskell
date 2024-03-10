-- Consider a function separate s that returns a 2-tuple with the digits and non-digits in the string s separated, with the initial order maintained.
-- > separate "July 4, 1776" ("41776","July , ")

-- > separate "Problem 7: (10 points)" ("710","Problem : ( points)")

import Data.Char

separate :: String -> (String, String)
separate s = (filter isDigit s, filter (not . isDigit) s)


