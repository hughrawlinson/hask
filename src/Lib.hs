module Lib
    ( equal
    ) where

equal :: (Eq a) => [a] -> [a] -> Bool
equal [] [] = True
equal (x:xs) (y:ys)
  | x == y      = equal xs ys
equal _ _ = False
