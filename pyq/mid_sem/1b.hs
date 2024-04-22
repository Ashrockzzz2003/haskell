postagePrice :: Int -> Int
postagePrice w 
    | w < 0 = error "Weight can't be negative"
    | w <= 500 = 250
    | w > 500 && w <= 5000 = 300 + w
    | otherwise = 6000