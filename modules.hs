import Data.List
import Data.Char
import Data.Map

pegaNumerosUnicos :: (Eq a) => [a] -> Int
pegaNumerosUnicos = length . nub