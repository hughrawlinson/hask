module Main where

import Lib

main :: IO ()
main = do
  print (equal "Test" "Test")
  print (equal [1,2,3] [1,2,3])
  print (equal "" "")
  print (not (equal [1,2,3] [2,3,4]))
  print (not (equal "Test" "Tests"))
  print (zeroCrossings [-1,1,-1])
  print (zeroCrossings [-1,1,1,1,-1,-1])
  print (zeroCrossings [-1,1,-1,1,-1,1,-1])
  print (zeroCrossings [1,1,1,1,1,1,1,1,1,1])
  print (zeroCrossings [-1,1,-1])
