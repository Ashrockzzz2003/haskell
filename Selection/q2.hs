checkCanDrive :: Int->String->String
checkCanDrive a name
        | a>=16 = name ++ ", You are old enough to drive"
        | otherwise = name++ ", You have " ++ show(16-a) ++" years to wait before you can drive"


main = do
        putStr "Enter name:"
        n<-getLine

        putStr "Enter age:"
        aa<-getLine
        let a = read aa :: Int

        print(checkCanDrive a n)