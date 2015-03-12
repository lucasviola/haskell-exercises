module Geometry.Cuboid
( volume
, area
) where

volume :: Float -> Float -> Float -> Float
volume a b c = areaDoRetangulo a b * c

area :: Float -> Float -> Float -> Float
area a b c = areaDoRetangulo a b * 2 + areaDoRetangulo a c + areaDoRetangulo c b * 2

-- Essa função não é parte do módulo. Por isso não foi exportada.
-- É só uma função helper
areaDoRetangulo :: Float -> Float -> Float
areaDoRetangulo a b = a * b