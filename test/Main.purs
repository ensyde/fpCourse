module Test.Main where

import Prelude

import Data.Traversable (sequence)
import Effect (Effect)
import Test.Applicative (applicativeTest)
import Test.CArray (testCArray)
import Test.Functor (functorTest)
import Test.Unit.Main (runTest)

main :: Effect Unit
main = do
    _ <- sequence $ map runTest [testCArray] 
    pure unit
