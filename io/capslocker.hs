import Control.Monad
import Data.Char

main = forever $ do
	putStr "Feed me something: "
	linha <- getLine
	putStrLn $ map toUpper linha