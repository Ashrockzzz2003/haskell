multiply :: Int -> Int -> Int 
multiply _ 0 = 0   
multiply a b 
 | b < 0     = error "Second number must be non-negative" 
 | otherwise = a + multiply a (b - 1) 