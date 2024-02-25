findClassAverage :: Float -> [Float] -> Float
findClassAverage n xs = do
    let classSum = sum xs
    classSum / n

checkForMoreThanTwo :: Float -> [Float] -> Bool
checkForMoreThanTwo clsAvg xs = do
    let tempCheck = [x | x <- xs, x < clsAvg]
    if length tempCheck > 2
        then True
        else False

main :: IO ()
main = do
    putStr "Enter no. of Students: "
    nn <- getLine
    let n = read nn :: Float
    putStr "Enter marks: "
    ll <- getLine
    let l = map read (words ll) :: [Float]
    let classavg = findClassAverage n l
    putStr "Class Average: "
    print classavg
    putStr "Is there more than 2 less than avg: "
    print (checkForMoreThanTwo classavg l)
