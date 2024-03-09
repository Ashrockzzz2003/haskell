-- Convert temperature given in Fahrenheit to Celsius.

fahrenheitToCelsius :: Float -> Float
fahrenheitToCelsius f = (f - 32) * 5 / 9

main :: IO ()
main = do
  putStrLn "Enter temperature in Fahrenheit: "
  f <- getLine
  putStrLn ("[RESULT] " ++ show (fahrenheitToCelsius (read f)))