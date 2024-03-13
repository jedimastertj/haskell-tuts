module P22 where

import Data.Array

-- in Haskell, array is paramterized by types of both index and value 
-- in other programming languages, index type is always integer
-- typeclass Ix contains types that can be used as array indices
-- (i, i) parameter specifies the lower and upper indices of the array
-- listArray :: Ix i => (i, i) -> [e] -> Array i e

myArr :: Array Char Int
myArr = listArray ('a', 'e') [1 .. 5]

main = do
    print myArr
    -- array lookup
    print (myArr ! 'a')
    -- array update
    print (myArr // [('a', 100), ('e', 100)])
    -- arrays are immutable
    print myArr

    -- Array is a Foldable instance
    print (foldr (+) 0 myArr)