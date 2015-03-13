module Shapes 
( Point
, Shape(..) 
, surface
) where

-- Value Constructor (Criando um tipo, basicamente)

-- Duas dimensões
data Point = Point Float Float deriving (Show)

-- Três dimensões
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

-- Ex: surface (Circle (Point 1 2) 3)
-- Ex: surface (Rectangle (Point 4 5) (Point 6 7))
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) =  (abs $ x2 - x1) * (abs $ y2 - y1)