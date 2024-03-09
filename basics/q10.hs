-- Calculate the area of a triangle whose sides are given

triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c = sqrt (s * (s - a) * (s - b) * (s - c))
  where
    s = (a + b + c) / 2

main :: IO ()
main = do
    putStrLn "Enter the sides of the triangle [Space Separated]: "
    input <- getLine
    let [a, b, c] = map read (words input)

    putStrLn ("[RESULT] " ++ show (triangleArea a b c))