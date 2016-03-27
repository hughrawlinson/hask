import Lib
import Test.HUnit

test1 :: Test
test1 = TestCase (assertEqual "One Zero Crossing" (zeroCrossings [1,-1]) 1)

tests = TestList [
    TestLabel "lkajsOne Zero Crossing" TestCase (
      assertEqual "One Zero Crossing" (zeroCrossings [1,-1]) 1
    ),
		TestLabel "Many Zero Crossings" TestCase (
      assertEqual "Seven Zero Crossings" (zeroCrossings (take 8 $ cycle [1,-1])) 7
    )
  ]

main :: IO Counts
main = runTestTT tests

