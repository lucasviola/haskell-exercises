import qualified Data.Map as Map

-- Isso é como se fosse um HashMap.
-- É simplesmente uma lista de tuplas
phoneBook =
	[("lucas", "99911666")
	,("Mel", "99775544")
	,("Julia", "99786623")
	,("Mateus", "99002345")
	]

findTelefone :: (Eq k) => k -> [(k,v)] -> v
findTelefone key xs = snd . head . filter (\(k,v) -> key == k) $ xs
