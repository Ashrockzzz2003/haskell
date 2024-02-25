--7. Write a user defined function to concatenate two list into a new list
myConcat :: [a]->[a]->[a]
myConcat [] ys = ys
myConcat xs ys = myConcat (tail xs) ((head xs) : ys)

main = do
    putStr "Enter List 1:"
    llx<-getLine
    let lx = words llx
    putStr "Enter List 2:"
    lly<-getLine
    let ly = words lly
    print(myConcat lx ly)