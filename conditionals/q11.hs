getGrade :: Int -> String
getGrade x
    | x >= 80 = "A"
    | x >= 70 = "B"
    | x >= 60 = "C"
    | x >= 50 = "D"
    | otherwise = "F"