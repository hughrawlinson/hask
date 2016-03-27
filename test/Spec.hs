import Lib
import Test.HUnit

test1 = TestCase (assertEqual "One Zero Crossing" (zeroCrossings [1,-1]) 1)

tests = TestList [
		TestLabel "One Zero Crossing" test1
	]

