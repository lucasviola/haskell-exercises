-- This is kinda like method overloading

--Pattern Matching
lucky :: (Integral a) => a -> String
lucky 7 = "Lucky Number Seven!"
lucky x = "Sorry, you're out of luck pal!"

factorial :: (Integral a) => a -> a
factorial 0 = 1;
factorial n = n * factorial (n-1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

-- Using Pattern Matching to recognize fst and snd in tuples
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- This is the wrong way:
-- addVectors a b = (fst a + fst b, snd a + snd b)
-- This is the Right way:
addVectors (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)

-- And if we want to use fst and snd on Triples?
fstTriples :: (a, b, c) -> a
fstTriples (x, _, _) = x

sndTriples :: (a, b, c) -> b
sndTriples (_,x,_) = x

trdTriples :: (a, b, c) -> c
trdTriples (_,_,x) = x

-- My own implementation of the Head function
head' :: [a] -> a
head' [] = error "This is impossible. The List is empty"
head' (x:_) = x -- _ == any number we dont care

-- This function is safe because it takes care of an empty
-- list, a singleton list, a list with two elements, and a
-- list with more than two elements
tell :: (Show a) => [a] -> String
tell [] = error "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and" ++ show y;

-- An implementation of the length function by using pattern matching and recursion
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs -- Here we split the list into a head and tail

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:y:xs) = "all: " ++ all ++ " 1st: " ++ [x] ++ " 2nd: " ++ [y]

-- Guards
-- A Guard (|) is a Pipe Operator. It evaluates a Boolean Condition.
-- Basically, they work like nested if else conditions

-- My own max function using Guards
max' :: (Ord a) => a -> a -> a
max' a b
	| a > b = a
	| otherwise = b

-- My own compare function
compare' :: (Ord a) => a -> a -> Ordering
(compare') a b
	| a > b = GT
	| a == b = EQ
	| otherwise = LT

-- Here we are defining aliases for formula, etc and calling in the Guards
-- The aliases we define in the where function belong only to this namespace
bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | formula <= skinny = "You're underweight"  
    | formula <= normal = "You're supposedly normal."  
    | formula <= fat    = "You're fat!"  
    | otherwise     = "You're obese."  
    where formula = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0

initials :: String -> String -> String  
initials firstname lastname = "Hello, Mr. " ++ [f] ++ ". " ++ [l] ++ "."  
    where (f:_) = firstname  
          (l:_) = lastname

-- This uses a list comprehension and returns my bmi
-- Also, I'm defining a function in the where bind
bmiTell' :: (RealFloat a) => [(a, a)] -> [a]
bmiTell' xs = [formula w h | (w, h) <- xs]
	where formula weight height = weight / height ^ 2

-- using pattern matching in the where bind
describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
    where what [] = "empty."  
          what [x] = "a singleton list."  
          what xs = "a longer list."  

-- case expressions
--Syntax:
-- case <expression> of <pattern> -> result
--						<pattern> -> result

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
                                               xs -> "a longer list." 



