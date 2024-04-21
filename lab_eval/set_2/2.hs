-- Define a higher-order function called applyNtimes that takes an integer n and a function f, and returns a new function that applies f to its argument n times.

applyNtimes :: Int -> (a -> a) -> (a -> a)
applyNtimes n f
    | n == 0 = f
    | n == 1 = f
    | otherwise = f . applyNtimes (n - 1) f