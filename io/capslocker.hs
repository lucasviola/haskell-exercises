import Control.Monad
import Data.Char

main = forever $ do
	putStr "Feed me something: "
	conteudo <- getContents
	putStr (map toUpper conteudo)