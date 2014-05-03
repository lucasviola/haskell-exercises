doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
	then x
	else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

helloWorld = ['h','e','l','l','o'] ++ " " ++ "world"

printString = 'A' :" small cat" 

returnList funcName x  = funcName !! x

-- Lists

b = [[1,3,5,7],[2,4,6,8,10],[0,0,0]]

c = [1, 2, 3, 4, 5, 6, 7]

alphabet = ['a'..'z']
enum = [1..100]

evens = [2, 4..100]
odds = [3, 6..100]

consonants = ['a', 'c'..'z']

cyclePrinting list x = take x (cycle list)

-- List Comprehension
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
mix = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

-- this function takes a string (basically, a list) and returns the length of the string
length' xs = sum [1 | _ <- xs] 

removeNonUpperCase st = [ c | c <- st, c `elem` ['A'..'Z']]

triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]
rightTriangles' = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c ==24]