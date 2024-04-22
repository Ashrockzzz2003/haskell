-- Pangrams are strings that contain at least one occurrence of each letter of the English alphabet.

import Data.Char (toLower)

pangram :: String -> Bool
pangram s = all (`elem` map toLower s) ['a'..'z']
