-- 2. Write a function startEnd that takes in a list of any type and returns a 2-tuple containing the first and last element of the list.

startEnd::[a]->(a,a)
startEnd xs = (last xs,head xs)

getList::Integer->[String]->IO[String]
getList 0 result = return result
getList n result= do
		putStr "Enter element: "
		i<-getLine
		let nresult = i:result
		getList (n-1) nresult
	

main = do
	putStr "Enter no of elements"
	nn<-getLine
	let n = read nn::Integer
	
	l<-getList n []
	print(startEnd l)

	