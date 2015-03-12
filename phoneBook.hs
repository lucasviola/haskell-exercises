import qualified Data.Map as Map
import Data.Maybe

-- Isso é como se fosse um HashMap.
-- É simplesmente uma lista de tuplas
phoneBook =
	[("lucas", "99911666")
	,("Mel", "99775544")
	,("Julia", "99786623")
	,("Mateus", "99002345")
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