-- sort list of lists by length without using inbuilt functions

lensort :: [[a]] -> [[a]]
lensort [] = []
lensort (x:xs) = lensort [y | y <- xs, length y <= length x] ++ [x] ++ lensort [y | y <- xs, length y > length x]
