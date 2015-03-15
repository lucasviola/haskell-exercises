import Control.Monad
import Data.Char

main = forever $ do
	putStr "Escreve alguma coisa aí: "
	linha <- getLine
	putStrLn $ map toUpper linha


-- while(true) {do this forever}