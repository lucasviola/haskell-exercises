import Control.Monad

main = do
	cores <- forM [1,2,3,4] (\a -> do
		putStrLn $ "Qual cor voce associa ao numero: " ++ show a ++ "?"
		cor <- getLine
		return cor)
	putStrLn "As cores que voce associa com 1, 2, 3, 4 sao: "
	mapM putStrLn cores
