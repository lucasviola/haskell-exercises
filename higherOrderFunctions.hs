-- Here we are saying that applyTwice receives a function and a parameter
applyTwice :: (a -> a) -> a -> a -- Currying
applyTwice f x = f (f x)
-- Ex: applyTwice (+3) 10
-- Ex: fst (tail (applyTwice (3:) [1]), head (applyTwice (2:) [1,2]))

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs