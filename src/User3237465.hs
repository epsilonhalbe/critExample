{-# LANGUAGE DeriveFoldable #-}
module User3237465 where

import Data.Foldable (foldl')

data Tree a = Empty | Node a [Tree a] deriving (Eq, Show, Foldable)

addNums :: Num a => Tree a -> a
addNums = sum

addFolding :: Num a => Tree a -> a
addFolding = foldl' (+) 0

myInts :: Tree Int
myInts =
    Node 1 [
           Node 2 [
             Node 4 [Empty], Node 5 [Empty]
           ],
           Node 3 [
             Node 6 [Empty], Node 7 [Empty], Node 8 [Empty]
           ]
        ]

myDouble :: Tree Double
myDouble =
    Node 1 [
           Node 2 [
             Node 4 [Empty], Node 5 [Empty]
           ],
           Node 3 [
             Node 6 [Empty], Node 7 [Empty], Node 8 [Empty]
           ]
        ]
