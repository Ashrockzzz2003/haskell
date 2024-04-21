initsegs :: [a] -> [[a]]
initsegs [] = [[]]
initsegs l = initsegs (init l) ++ [l]