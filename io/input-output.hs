import Data.Char

main = do
	putStrLn "Qual o seu primeiro nome?"
	primeiroNome <- getLine
	putStrLn "Qual o seu segundo nome?"
	segundoNome <- getLine
    let primeiroNomeMaiusculo = map toUpper primeiroNome  
        segundoNomeMaiusculo = map toUpper segundoNome 
	putStrLn $ "Ola " ++ primeiroNomeMaiusculo ++ " " ++ segundoNomeMaiusculo ++ ", como tu andas?"