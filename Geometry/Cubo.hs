module Geometry.Cubo
( volume
, area
) where

import qualified Geometry.Cuboid as Cuboid

volume :: Float -> Float
volume lado = Cuboid.volume lado lado lado

areaDoCubo :: Float -> Float
areaDoCubo lado = Cuboid.volume lado lado lado

area :: Float -> Float
area lado = Cuboid.volume lado lado lado
