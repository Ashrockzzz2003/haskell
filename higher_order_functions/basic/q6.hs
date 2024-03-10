{-
The following function is supposed to transform every value in a list so that it is equal to the square root of its absolute value. Fill in the blank with a composition of two or more functions that will cause the transform function to perform its intended purpose. Hint: Haskell’s Prelude module includes functions sqrt :: Float -> Float and abs :: Float -> Float. 

transform :: [Float] -> [Float] transform values = map (______________________________________) values
-}

transform :: [Float] -> [Float]
transform values = map (sqrt . abs) values

