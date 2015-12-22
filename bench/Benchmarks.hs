module Main where

import Criterion
import Criterion.Main

import qualified Chi
import qualified Sibi
import qualified User3237465


main :: IO ()
main = defaultMain [
    bgroup "myInts" [ bench "Sibi"         $ whnf Sibi.addNums Sibi.myInts
                    , bench "Chi"          $ whnf Chi.addNums Chi.myInts
                    , bench "User3237465" $ whnf User3237465.addNums User3237465.myInts
                    , bench "User3237465/folding variant" $ whnf User3237465.addFolding User3237465.myInts
                    ],

    bgroup "myDouble" [ bench "Sibi"         $ whnf Sibi.addNums Sibi.myDouble
                      , bench "Chi"          $ whnf Chi.addNums Chi.myDouble
                      , bench "User3237465" $ whnf User3237465.addNums User3237465.myDouble
                      , bench "User3237465 folding variant" $ whnf User3237465.addFolding User3237465.myDouble
                      ]
    ]


