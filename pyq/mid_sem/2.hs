mapList :: (Int -> a) -> Int -> Int -> Int -> [a]
mapList f a b next = map f [a, a + next .. b]
