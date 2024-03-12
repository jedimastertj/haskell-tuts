module P20 where

import Data.Typeable
import Data.List
import Data.Ord

-- a type class (such as Num, Eq, etc.) is a way to group types that support similar operations

-- contains types that can be used in arithmetic operations
myAdd :: Num a => a -> a -> a
myAdd x y = x + y

-- contains types that can be compared for equality
myEqual :: Eq a => a -> a -> Bool
myEqual x y = x == y

-- contains types that can be ordered
myMax :: Ord a => a -> a -> a
myMax x y = if x > y then x else y

-- compare returns value of type Ordering, which can be LT, EQ, or GT
compareOutputs :: (Ord a) => (b -> a) -> b -> b -> Ordering
compareOutputs f x y = compare (f x) (f y)

-- sortBy sorts a list using given comparison function
sortByLength :: [[a]] -> [[a]]
sortByLength list2D = sortBy (compareOutputs length) list2D

main = do
    print (myAdd 5 3)
    print (myEqual "Hello!" "hello!")
    print (myMax 5 3)
    print (sortByLength ["Hello", "World!", "I", "am", "here"])