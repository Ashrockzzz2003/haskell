middle3 :: [Integer] ->[Integer]
middle3 xs = do
    let mid = div (length xs) 2
    [xs !! (mid-1),xs !! mid, xs !! (mid+1)]
	
main = do
	putStr "Enter List:"
	ll<-getLine
	let l = map read (words ll) :: [Integer]
	
	print(middle3 l)



