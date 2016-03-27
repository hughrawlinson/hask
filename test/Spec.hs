import Lib
import Test.HUnit

zeroCrossingTests = TestList [
    TestCase $
		  assertEqual "One Zero Crossing" (zeroCrossings [1, -1]) 1
  ]

main :: IO Counts
main = 
  runTestTT zeroCrossingTests
--	runTestTT zeroCrossingRateTests

