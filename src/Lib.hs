module Lib
    ( equal,
      zeroCrossings,
      zeroCrossingRate
    ) where

equal :: (Eq a) => [a] -> [a] -> Bool
equal [] [] = True
equal (x:xs) (y:ys)
  | x == y      = equal xs ys
equal _ _ = False

zeroCrossings :: (Real a) => [a] -> Int
zeroCrossings xs = zc xs 0 where
  zc :: (Real a, Integral b) => [a] -> b -> b
  zc (x:y:xs) count
    | signum x /= signum y = zc (y:xs) count + 1
    | otherwise = zc (y:xs) count
  zc [x] count = count

zeroCrossingRate :: (Real a, Fractional b) => [a] -> b
zeroCrossingRate x = fromIntegral(zeroCrossings x) / fromIntegral(length x)
