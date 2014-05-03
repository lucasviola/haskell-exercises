-- declarating the type of a list
-- :: means 'has the type of'
-- All explicit types must start with a capital letter

-- [Char] = a list of characters = a String
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, (elem) c ['A'..'Z']]

-- The return type is the LAST item in the declaration
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

triangles = show 5