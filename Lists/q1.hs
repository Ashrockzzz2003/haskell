--1. Write a function join that concatenates a list of strings together.

strjoin::String->String->String
strjoin s1 s2 = do
  s1 ++ s2


main = do 
    putStr "Enter String 1:"
    str1 <- getLine
    let s1 = read str1::String 

    putStr "Enter String 2:"
    str2<-getLine
    let s2 = read str2::String 

    print(strjoin s1 s2)