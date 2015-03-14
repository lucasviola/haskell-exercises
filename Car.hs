module Car 
( Car (..)
) where

-- data Car = Car String String Int deriving (Show)

-- Record Syntax: Tipo Struct
-- Mais correto de utilizar
data Car = Car {company :: String, model :: String, year :: Int} deriving (Show)

-- Exemplo:
-- novoCarro = Car "Ford" "Ka" 1990
-- model novoCarro
-- "Ka"