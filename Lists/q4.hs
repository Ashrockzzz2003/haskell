percentWeight::[Float]->[String]
percentWeight xs = do
    let total = sum xs
    [show(x/total*100)++"%"|x<-xs]

main = do
    putStr "Enter n: "
    nn <- getLine
    let n = read nn :: Integer
    
    putStr "Enter List "
    ll <- getLine
    let l = map read (words ll) :: [Float]
    
    print(percentWeight l)
	
