import Lib
import Test.HUnit

test1 = TestCase (assertEqual "One Zero Crossing" (zeroCrossings [1,-1]) 1)

main :: IO ()
main = do
  putStrLn runTestTT test1

