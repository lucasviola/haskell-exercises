import Data.List

pegaNumerosUnicos :: (Eq a) => [a] -> Int
pegaNumerosUnicos = length . nub