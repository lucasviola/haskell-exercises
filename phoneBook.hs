import qualified Data.Map as Map
import Data.Maybe

-- Isso é como se fosse um HashMap.
-- É simplesmente uma lista de tuplas
phoneBook =
	[("lucas", "99911666")
	,("Mel", "99775544")
	,("Julia", "99786623")
	,("Mateus", "99002345")
	,("Mel", "99224567")
	,("Julia", "99224365")
	]

-- Unsafe: Quando não encontra nada gera exceção
findTelefone :: (Eq k) => k -> [(k,v)] -> v
findTelefone key xs = snd . head . filter (\(k,v) -> key == k) $ xs

-- Safe: Usando Maybe Monad
findTelefone' :: (Eq k) => k -> [(k,v)] -> Maybe v  
findTelefone' key [] = Nothing  
findTelefone' key ((k,v):xs) = if key == k  
                            then Just v  
                            else findTelefone' key xs 

-- Usando fold pattern
findTelefone'' :: (Eq k) => k -> [(k,v)] -> Maybe v
findTelefone'' key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing

-- Caso uma pessoa tenha 2 números, concatena em uma lista
-- Exemplo: Map.lookup "Mel" $ juntaNumerosEmUmaLista phoneBook (right-associativity)
juntaNumerosEmUmaLista :: (Ord k) => [(k, String)] -> Map.Map k String
juntaNumerosEmUmaLista xs = Map.fromListWith (\numero1 numero2 -> numero1 ++ ", " ++ numero2) xs

