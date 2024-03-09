-- Convert measurement given in feet to cms

feetToCm :: Float -> Float
feetToCm feet = feet * 30.48

main :: IO ()
main = do
    putStrLn "Enter measurement in feet: "
    feet <- getLine
    putStrLn (feet ++ " feet is equal to " ++ show (feetToCm (read feet)) ++ " cms")