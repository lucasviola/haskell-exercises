main = do
	putStrLn "Digite uma palavra ou frase para ser invertida:"
	linha <- getLine
	if null linha
		then return () -- Atenção: Isso é uma Monad! Não termina a execução do programa. Transforma a linha em IO.
		else do
			putStrLn $ invertePalavra linha
			main

invertePalavra :: String -> String
invertePalavra = unwords . map reverse . words

-- Explicação da função composta:
-- unwords (map reverse (words linha))
-- words: Transforma uma string em uma lista de palavras
-- unwords: Transforma uma lista de palavras em uma String