positiveNegativeOrZero :: Int -> String
positiveNegativeOrZero x
    | x > 0 = "Positive"
    | x < 0 = "Negative"
    | otherwise = "Zero"


-- Usage of Guards