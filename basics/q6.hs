-- Find the square, cube, square root of the given number

-- Get Number input function
getNumber :: IO Int
getNumber = do
  putStrLn "Enter a number: "
  read <$> getLine

-- Square function
squareNumber :: Int -> Int
squareNumber x = x * x

-- Cube function
cubeNumber :: Int -> Int
cubeNumber x = x * x * x

-- Square Root function
squareRootNumber :: Int -> Float
squareRootNumber x = sqrt (fromIntegral x)


main :: IO ()
main = do
    -- Menu Driven. Program Stops when user enters -1
    putStrLn "Menu"

    putStrLn "1. Square"
    putStrLn "2. Cube"
    putStrLn "3. Square Root"
    putStrLn "4. Exit"

    putStrLn "Enter your choice: "
    choice <- getLine

    case choice of
      "1" -> do
        number <- getNumber
        let result = squareNumber number
        putStrLn ("[RESULT] " ++ show result)
      "2" -> do
        number <- getNumber
        let result = cubeNumber number
        putStrLn ("[RESULT] " ++ show result)
      "3" -> do
        number <- getNumber
        let result = squareRootNumber number
        putStrLn ("[RESULT] " ++ show result)
      "4" -> putStrLn "Exiting..."
      _ -> putStrLn "Invalid Choice"

    case choice of
      "4" -> return ()
      _ -> main
