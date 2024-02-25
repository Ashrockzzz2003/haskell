getCount :: Int ->[Int]->Int
getCount xi xis = length [i | i<-xis,i == xi]
findDup :: [Int]-> [Int] -> [Int]
findDup [] myresult = myresult
findDup xs myresult = do
    let count = getCount (head xs) xs
    if count > 1 && ((head xs `elem` myresult) == False )
    then findDup (tail xs) ((head xs) : myresult)
    else findDup (tail xs) myresult
main = do
    putStr "Enter list:"
    ll<-getLine
    let l = map read (words ll) :: [Int]
    let myresult = []
    print(findDup l myresult)
	
	