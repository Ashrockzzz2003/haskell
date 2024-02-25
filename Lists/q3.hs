box::[[Integer]]->String
box mybox = do
	let total = sum[l*b*h | [l,b,h]<- mybox]
	show(total) ++ "inA3"

getList::Integer->[[Integer]]->IO[[Integer]]

getList 0 myList = return myList
getList n myList = do

	putStr "Box no-"
	print (n)
	
	putStr "Enter l:"
	ll<-getLine
	let l = read ll::Integer 
	
	putStr "Enter b:"
	bb<-getLine
	let b = read bb::Integer 
	
	putStr "Enter h:"
	hh<-getLine
	let h = read hh::Integer

	getList (n-1) (myList ++ [[l,b,h]])
	
	
	
	
main = do
	
	putStr "Enter n:"
	nn<-getLine
	let n = read nn::Integer
	l<- getList n []
	print(box l)