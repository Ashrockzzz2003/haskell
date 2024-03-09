import Data.Char

toggleCase :: Char -> String
toggleCase x
    | isLower x = [toUpper x]
    | isUpper x = [toLower x]
    | otherwise = [x]