module LibSpec where

import Lib
import Test.Hspec

spec :: Spec
spec = do
  describe "zeroCrossings" $ do
    it "finds zero crossings" $
      zeroCrossings [1] `shouldBe` 0
    it "finds one crossing" $
      zeroCrossings [-1, 1] `shouldBe` 1
    it "finds multiple crossings" $
      zeroCrossings (concat $ replicate 4 [1, -1]) `shouldBe` 7
  describe "zeroCrossingRate" $ do
    it "correctly gets zcr" $ do
      zeroCrossingRate [1] `shouldBe` 0
    it "correctly gets zcr" $ do
      zeroCrossingRate [1, -1] `shouldBe` 0.5
    it "correctly gets zcr" $ do
      zeroCrossingRate (concat $ replicate 4 [1, -1]) `shouldBe` 7/8
  describe "equal" $ do
    it "should work on strings" $ do
      equal "Test" "Test" `shouldBe` True
    it "should work on lists" $ do
      equal [1,2,3] [1,2,3] `shouldBe` True
    it "should work on empty things" $ do
      equal "" "" `shouldBe` True
    --  equal [] [] `shouldBe` True
    it "should detect inequality" $ do
      equal "a" "b" `shouldBe` False
      equal [1] [8] `shouldBe` False

