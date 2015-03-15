import System.Environment
import System.IO

main = do (fileName:_) <- getArgs  
          contents <- readFile fileName  
          putStrLn $ "O arquivo tem " ++ show (length (lines contents)) ++ " linhas!" 