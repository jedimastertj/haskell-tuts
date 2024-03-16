module P27 where

data Pair a = MakePair a a
    deriving Show

-- instance hierarchy
-- Eq (Pair a) instance needs Eq a instance to work

instance Eq a => Eq (Pair a) where
    (MakePair x1 y1) == (MakePair x2 y2) = (x1 == x2) && (y1 == y2)

pair1, pair2 :: Pair Int
pair1 = MakePair 1 2
pair2 = MakePair 2 3

class Size a where
    size :: a -> Int

-- class hierarchy
-- SizeBoth a instance needs Size a instance to work
-- can say SizeBoth is a subclass of Size

class Size a => SizeBoth a where
    sizeBoth :: a -> a -> Int
    sizeBoth x y = size x + size y

instance Size Int where
    size x = abs x

instance SizeBoth Int

x, y :: Int
x = 5
y = -3

main = do
    print (pair1 == pair2)
    print (sizeBoth x y)