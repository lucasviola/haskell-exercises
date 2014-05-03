quickSort :: (Ord a) => [a] -> [a] -- Signature
quickSort [] = [] --Edge Condition
quickSort (x:xs) = 
	let smallerSorted = quickSort [a | a <- xs, a <= x]
	    biggerSorted = quickSort [a | a <- xs, a > x]
	in smallerSorted ++ [x] ++ biggerSorted

-- Usage: quickSort "Luke, I'm your father."