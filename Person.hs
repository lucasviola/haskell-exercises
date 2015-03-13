module Person 
( Person (..)
, primeiroNome
, ultimoNome
, idade
, altura
, numeroDeTelefone
, saborFavoritoDeSorvete
) where

data Person = Person String String Int Float String String deriving (Show)

primeiroNome :: Person -> String
primeiroNome (Person primeironome _ _ _ _ _) = primeironome

ultimoNome :: Person -> String
ultimoNome (Person _ ultimonome _ _ _ _) = ultimonome

idade :: Person -> Int
idade (Person _ _ idade _ _ _) = idade

altura :: Person -> Float
altura (Person _ _ _ altura _ _) = altura

numeroDeTelefone :: Person -> String
numeroDeTelefone (Person _ _ _ _ telefone _) = telefone

saborFavoritoDeSorvete :: Person -> String
saborFavoritoDeSorvete (Person _ _ _ _ _ sabor) = sabor

--Só um exemplo
-- saborFavoritoDeSorvete lukita
lukita = Person "Lucas" "Violita" 25 168.2 "997720666" "Pistache"

