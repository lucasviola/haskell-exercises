import System.Environment
import System.IO
import System.Directory

main = do (fileName:_) <- getArgs  
          fileExists <- doesFileExist fileName  
          if fileExists  
              then do contents <- readFile fileName  
                      putStrLn $ "O arquivo tem " ++ show (length (lines contents)) ++ " linhas!"  
              else do putStrLn "O arquivo não existe!"  