
countFreq :: (Eq a) => [a] -> [(a, Int)]
countFreq [] = []
countFreq (x:xs) = (x, length (filter (==x) xs) + 1) : countFreq (filter (/=x) xs)


