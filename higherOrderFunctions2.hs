-- A Function that receives a function and returns a function
-- This is also a type construct!

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys 

-- flip' :: (a -> b -> c) -> (b -> a -> c)
-- flip' f = g
-- 	where g x y = f x y

largestDivisible :: (Integral a ) => a
largestDivisible = head (filter p [1000000, 99999..])
	where p x = x `mod` 3829 == 0 

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
	| even n = n:chain(n `div` 2)
	| odd n = n:chain (n*3 + 1)

numLongChains = length(filter (\xs -> length xs > 15) (map chain[1..100]))
