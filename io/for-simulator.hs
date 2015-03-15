import Control.Monad

main = do
	cores <- forM [1,2,3,4] (\a -> do
		putStrLn $ "Qual cor voce associa ao numero: " ++ show a ++ "?"
		cor <- getLine
		return cor)
	putStrLn "As cores que voce associa com 1, 2, 3, 4 sao: "
	mapM putStrLn cores

-- o forM executa o lambda que tá dentro do DO BLOCK n vezes e dá um bind do
	-- return em cores
-- O  mapM mapeia os numeros com as cores