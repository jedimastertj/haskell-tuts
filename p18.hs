module P18 where

import Data.List

-- tuples can be used to bundle values of different types together
-- they have a fixed length and are immutable

-- pattern matching on tuples
sumIf :: [(Int, Bool)] -> Int
sumIf [] = 0
sumIf ((x, True) : rest) =  x + sumIf rest
sumIf ((x, False) : rest) = sumIf rest

swap :: [(a, b)] -> [(b, a)]
swap [] = []
swap ((x, y) : rest) = (y, x) : swap rest

main = do
    print (zip [1,2,3] ['a','b','c'])
    print (unzip [("Fred",True),("Jack",False),("Helen",True)])
    print (partition (>3) [1,3,5,6,3,2,1,0,3,7])
    print (sumIf [(1,True),(2,False),(3,True),(4,False),(5,True)])
    print (swap [(1,'R'),(2,'S'),(3,'T')])