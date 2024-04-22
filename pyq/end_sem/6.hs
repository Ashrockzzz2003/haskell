listaccess (x : xs) n | n < 0 || n > length x = error "Index out of bounds"
                      | n == 0 = x
                      | otherwise = listaccess xs (n - 1)
