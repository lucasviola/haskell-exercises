import Data.List
import Data.Char
import Data.Map
import qualified Data.Set as Set

pegaNumerosUnicos :: (Eq a) => [a] -> Int
pegaNumerosUnicos = length . nub

