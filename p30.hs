module P30 where

import Data.Semigroup

main = do
    -- types with multiple associative operators are not made an instance of Semigroup directly (like Int)
    -- a new type is created for an associative operator (like Sum, Product, Min, etc.) and made an instance of Semigroup

    print (Product 2 <> Product 3 <> Product 4)
    print (Sum 2 <> Sum 3 <> Sum 4)
    print (getMin (Min 2 <> Min 3 <> Min 4))

    -- a monoid is a semigroup with a neutral/identity element (eg. 0 for +, 1 for *, [] for ++, etc.)
    -- Monoid is type class with method mempty (returns neutral element), mappend (associative operator), and mconcat (associative operator for list)
    -- it is subclass of Semigroup

    print (mempty :: Product Float)
    print (mappend (Product 2) (Product 3) :: Product Int)

    -- folding a list of monoids using mconcat
    -- mconcat :: Monoid a => [a] -> a 

    print (mconcat [Sum 2, Sum 3, Sum 4] :: Sum Int)
    print (foldr (<>) mempty [Sum 2, Sum 3, Sum 4] :: Sum Int)

    -- foldMap is a useful function - applying a map and then folding monoids
    -- foldMap :: (Foldable t, Monoid m) => (a -> m) -> t a -> m

    print (foldMap Sum [1,2,3,4] :: Sum Int)
    print (mconcat (map Sum [1,2,3,4]) :: Sum Int)

    -- to make a user defined type an instance of Monoid, need to implement <> (in Semigroup) and mempty (in Monoid)