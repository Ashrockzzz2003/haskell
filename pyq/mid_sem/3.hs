largeTuples :: Int -> [(Int, Int)] -> [(Int, Int)]
largeTuples _ [] = []
largeTuples max ((a, b):lts)
    | a + b > max = (a,b) : largeTuples max lts
    | otherwise = largeTuples max lts

-- with list comprehension
-- largeTuples :: Int -> [(Int, Int)] -> [(Int, Int)]
-- largeTuples max lt = [(x, y) | (x, y) <- lt, x + y > max]