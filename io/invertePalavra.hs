main = do
	putStrLn "Digite uma palavra ou frase para ser invertida:"
	linha <- getLine
	if null linha
		then return ()
		else do
			putStrLn $ invertePalavra linha
			main

invertePalavra :: String -> String
invertePalavra = unwords . map reverse . words