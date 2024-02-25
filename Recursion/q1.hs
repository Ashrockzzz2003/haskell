mygcd :: Int -> Int -> Int
mygcd a 0 = a
mygcd a b = gcd b (mod a b)
