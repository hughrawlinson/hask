module Lib
    ( equal,
      zeroCrossings
    ) where

equal :: (Eq a) => [a] -> [a] -> Bool
equal [] [] = True
equal (x:xs) (y:ys)
  | x == y      = equal xs ys
equal _ _ = False

zeroCrossings :: (Ord a, Num a, Integral b) => [a] -> b
zeroCrossings xs = zc xs 0 where
  zc :: (Ord a, Num a, Integral b) => [a] -> b -> b
  zc (x:y:xs) count
    | x > 0 && y < 0 = zc (y:xs) count + 1
    | x < 0 && y > 0 = zc (y:xs) count + 1
    | otherwise = zc (y:xs) count
  zc [x] count = count
