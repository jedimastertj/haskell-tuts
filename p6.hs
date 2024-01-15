module P6 where

import Data.List

list1 = [1, 2, 3, 4, 5]
list2 = [6 .. 10]
list3 = [1, 0, 5, 3]

-- a is a type variable
-- type variables can turn into concrete types (e.g. Integer) by the process of type inference
rotate :: [a] -> [a]
rotate list = tail list ++ [head list]

main = do
    -- list operations
    print (head list1)
    print (last list1)
    print (tail list1)
    print (init list1)
    print (take 2 list1)
    print (drop 2 list1)
    print (list1 ++ list2)
    print (list2 !! 2)
    print (reverse list2)
    print (length list2)
    print (null list2)
    print (maximum list3)
    print (minimum list3)
    print (sort list3)
    print (sum list3)
    print (rotate list3)