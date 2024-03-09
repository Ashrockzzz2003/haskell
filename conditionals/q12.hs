-- Get Two Numbers input function
getTwoNumbers :: IO (Int, Int)
getTwoNumbers = do
  putStrLn "Enter first number: "
  number_1 <- getLine
  putStrLn "Enter second number: "
  number_2 <- getLine
  return (read number_1, read number_2)

-- Sum function
sumNumbers :: (Int, Int) -> Int
sumNumbers (x, y) = x + y

-- Difference function
differenceNumbers :: (Int, Int) -> Int
differenceNumbers (x, y) = x - y

-- Product function
productNumbers :: (Int, Int) -> Int
productNumbers (x, y) = x * y

-- Quotient function
quotientNumbers :: (Int, Int) -> Int
quotientNumbers (x, y) = if y == 0 then 0 else div x y

-- Remainder function
remainderNumbers :: (Int, Int) -> Int
remainderNumbers (x, y) = if y == 0 then 0 else mod x y

main :: IO ()
main = do
    -- Menu Driven. Program Stops when user enters -1
    putStrLn "Menu"

    putStrLn "1. Sum"
    putStrLn "2. Difference"
    putStrLn "3. Product"
    putStrLn "4. Quotient"
    putStrLn "5. Remainder"
    putStrLn "6. Exit"

    putStrLn "Enter your choice: "
    choice <- getLine

    case choice of
      "1" -> do
        numbers <- getTwoNumbers
        let result = sumNumbers numbers
        putStrLn ("[RESULT] " ++ show result)
      "2" -> do
        numbers <- getTwoNumbers
        let result = differenceNumbers numbers
        putStrLn ("[RESULT] " ++ show result)
      "3" -> do
        numbers <- getTwoNumbers
        let result = productNumbers numbers
        putStrLn ("[RESULT] " ++ show result)
      "4" -> do
        numbers <- getTwoNumbers
        let result = quotientNumbers numbers
        putStrLn ("[RESULT] " ++ show result)
      "5" -> do
        numbers <- getTwoNumbers
        let result = remainderNumbers numbers
        putStrLn ("[RESULT] " ++ show result)
      "6" -> putStrLn "Exiting"
      

    case choice of
      "6" -> return ()
      _ -> main
