module Chi where

data Tree a = Empty | Node a [Tree a] deriving (Eq, Show)

addNums :: (Num a) => Tree a -> a
addNums Empty = 0
addNums (Node n xs) = n + sum (map addNums xs)

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
