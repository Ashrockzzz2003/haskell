vowelOrNumberOrAnythingElse :: Char -> String
vowelOrNumberOrAnythingElse x
    | x `elem` "aeiouAEIOU" = "Vowel"
    | x `elem` "0123456789" = "Number"
    | otherwise = "Anything else"