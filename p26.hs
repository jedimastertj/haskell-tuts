module P26 where

data Color = Black | White

-- making user defined type (Color) a member of an existing class (Eq)
-- a class instance block contains definitions for the functions in that class 
-- deriving is a way to automatically generate class instance definitions (but may have unexpected behavior)

instance Eq Color where
    Black == Black = True
    White == White = True
    _ == _ = False

c1 = Black
c2 = White

-- defining a type class
-- notice that isEmpty, sameSize functions have a default implementation (can be overriden)
-- minimal complete definition denotes the minimum set of functions that need to be implemented (eg. size)

class Size a where
    size :: a -> Int
    isEmpty :: a -> Bool
    sameSize :: a -> a -> Bool

    isEmpty x = size x == 0
    sameSize x y = size x == size y

-- making exisiting types (Int, List, Maybe) a member of a user defined class (Size)
instance Size Int where
    size x = abs x
    sameSize x y = abs x == abs y

instance Size [a] where
    size x = length x
    isEmpty x = null x

instance Size (Maybe a) where
    size (Just x) = 1
    size Nothing = 0

main = do
    print (c1 == c2)
    print (size [1, 2, 3, 4, 5])
    print (isEmpty Nothing)
    print (sameSize (7 :: Int) (8 :: Int))