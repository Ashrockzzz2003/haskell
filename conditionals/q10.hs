singleDigitNumberToWord :: Int -> String
singleDigitNumberToWord x
    | x < 0 || x > 9 = "Invalid input"
    | otherwise = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"] !! x
