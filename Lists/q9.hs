getCount :: Int ->[Int]->Int
getCount xi xis = length [i | i<-xis,i == xi]
findOddOcc :: [Int]-> Int
findOddOcc [] = 0
findOddOcc xs = do
    let count = getCount (head xs) xs
    if (mod count 2) == 1
    then head xs
    else findOddOcc (tail xs)
main = do
    putStr "Enter list:"
    ll<-getLine
    let l = map read (words ll) :: [Int]
    print(findOddOcc l)
	
	