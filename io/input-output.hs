main = do
	a <- return "hell"
	b <- return "yeah"
	putStrLn $ a ++ " " ++ b

-- O return faz um wrap da String em uma Monad
-- O <- faz um unwrap da Monad e salva na variável