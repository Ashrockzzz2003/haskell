{-
The Luhn algorithm is used to check bank card numbers for simple errors such as mistyping a digit, and proceeds as follows: consider each digit as a separate number; moving left, double every other number from the second last; subtract 9 from each number that is now greater than 9; add all the resulting numbers together; if the total is divisible by 10, the card number is valid. In order to accomplish this:                                                                           ​​​​​​​​
Define a function luhnDouble :: Int -> Int that doubles a digit and subtracts 9 ​if the result  is greater than 9. 
For example: 
> luhnDouble 3 
6 
-}

luhnDouble :: Int -> Int
luhnDouble x | x*2 > 9 = x*2 - 9
             | otherwise = x*2

