-- Here we are saying that applyTwice receives a function and a parameter
applyTwice :: (a -> a) -> a -> a -- Currying
applyTwice f x = f (f x)
-- Ex: applyTwice (+3) 10
-- Ex: fst (tail (applyTwice (3:) [1]), head (applyTwice (2:) [1,2]))

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
	where g x y = f y x

-- Usage: map (map (^2)) [[1,2],[3,4,5],[6,7,8]]
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs


-- Usage: filter (`elem` ['A'..'Z']) "the quick brown fox jumpS over the lAzy caT and nothing hAppeNs."
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
	| p x = x : filter' p xs
	| otherwise = filter' p xs

-- Quicksort using filters
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter (<=x) xs)  
        biggerSorted = quicksort (filter (>x) xs)   
    in  smallerSorted ++ [x] ++ biggerSorted

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [1000000,99999..])
	where p x = x `mod` 3234 == 0

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100])

