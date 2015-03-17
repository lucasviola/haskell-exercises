import Data.Char  
import Data.List  
  
main = do line <- fmap (intersperse '-' . reverse . map toUpper) getLine  
          putStrLn line

-- fmap é uma instância da typeclass Functor.
-- É como um map, só que mapeia funções e recebe um parâmetro só

-- Outra maneira de fazer:
-- (\xs -> intersperse '-' (reverse (map toUpper xs))) 