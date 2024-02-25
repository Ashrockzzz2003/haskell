calcPayment :: Float->Float->Float
calcPayment r h = if h>40
				then ((40*r) + (h-40)*1.5*r)
				else h * r

main = do
	putStr "Enter hourly pay rate:"
	rr<-getLine
	let r = read rr :: Float
	
	putStr "Enter hours worked in a week:"
	hh<-getLine
	let h = read hh :: Float
	print(calcPayment r h)
	