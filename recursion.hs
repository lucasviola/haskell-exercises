
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list" -- Edge Condition
maximum' [x] = x -- Another Edge Condition. The maximum of a singleton is the singleton itself
maximum' (x:xs) -- pattern matching -> head:tail
	| x > maxTail = x -- if the head is bigger than the maximum of the tail, x is the bigger one
	| otherwise = maxTail -- if not, the maximum of the tail is the bigger one
	where maxTail = maximum' xs -- If you still don't understand recursion, read this comment!

-- Rewriting maximum using max
-- max :: Ord a => a -> a -> a
maximum'' :: (Ord a) => [a] -> a
maximum'' [] = error "maximum of empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum' xs)

-- Note: Two typeclass constraints. Num is NOT a part of Ord.
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
	| n <= 0    = []
	| otherwise = x:replicate' (n-1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
	| n <= 0 = [] -- edge condition
take' _ [] = [] -- second edge condition
take' n (x:xs) = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = [] -- edge condition
reverse' (x:xs) = reverse' xs ++ [x]

-- repeat takes an element and return and infinite list with just that element
-- infinite data structures FTW
repeat' :: a -> [a]
repeat' x = x:repeat' x

-- concatenating two lists together
zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False -- edge condition
elem' a (x:xs)
	| a == x = True
	| otherwise = a `elem` xs
