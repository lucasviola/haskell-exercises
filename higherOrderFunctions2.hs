-- A Function that receives a function and returns a function
-- This is also a type construct!

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)