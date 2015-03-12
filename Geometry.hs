module Geometry
( volumeDaEsfera
, areaDaEsfera
, volumeDoCubo
, areaDoCubo
, volumeDoCuboid
, areaDoCuboid
) where

volumeDaEsfera :: Float -> Float
volumeDaEsfera raio = (4.0 / 3.0) * pi * (raio ^ 3)

areaDaEsfera :: Float -> Float
areaDaEsfera raio = 4 * pi * (raio ^ 2)

volumeDoCubo :: Float -> Float
volumeDoCubo lado = (((volumeDoCuboid lado) lado) lado)

areaDoCubo :: Float -> Float
areaDoCubo lado = volumeDoCuboid lado lado lado

volumeDoCuboid :: Float -> Float -> Float -> Float
volumeDoCuboid a b c = areaDoRetangulo a b * c

areaDoCuboid :: Float -> Float -> Float -> Float
areaDoCuboid a b c = areaDoRetangulo a b * 2 + areaDoRetangulo a c + areaDoRetangulo c b * 2

areaDoRetangulo :: Float -> Float -> Float
areaDoRetangulo a b = a * b