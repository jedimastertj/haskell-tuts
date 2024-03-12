module P21 where

import qualified Data.Map as Rad

-- key type of map has Ord typeclass, because maps are implemented as ordered binary search trees
myMap :: Rad.Map Int String
myMap = Rad.fromList [(1, "A"), (2, "B"), (3, "C")]

main = do
    -- foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b
    -- maybe type is Foldable

    print (foldr (+) 1 Nothing)
    print (foldr (+) 1 (Just 6))

    print (Rad.lookup 2 myMap)
    print (Rad.lookup 7 myMap)

    -- like all haskell values, maps are immutable and operations like insert produce a new map
    print (Rad.insert 7 "G" myMap)
    print (Rad.delete 2 myMap)
    print (myMap)