{-
The following function is supposed to redact some text by replacing all of the characters in a string, other than spaces, with * characters. Fill in the blank with a lambda function that causes the redact function to perform this task. Do not write a named helper function. 
redact :: String -> String 
redact s = map (___________________________________________________) s
-}


redact :: String -> String
redact s = map (\x -> if x == ' ' then ' ' else '*') s
