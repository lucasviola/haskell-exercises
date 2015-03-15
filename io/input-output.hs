main = do
	putStrLn "Ola, qual o seu nome?"
	name <- getLine
	putStrLn $ "Leia com atencao. Esse eh o seu futuro: " ++ tellFortune name