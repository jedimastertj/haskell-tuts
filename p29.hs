module P29 where

-- this is a single infix constructor with two parameters
data NonEmptyList a = a :| [a]

instance Show a => Show (NonEmptyList a) where
    show (x :| xs) = show x ++ " :| " ++ show xs

toNonEmpty :: [a] -> Maybe (NonEmptyList a)
toNonEmpty [] = Nothing
toNonEmpty (x : xs) = Just (x :| xs)

toList :: NonEmptyList a -> [a]
toList (x :| xs) = x : xs

main = do
    -- added type annotation to avoid ambiguity, compiler unable to infer type for list
    print (toNonEmpty [1, 2, 3] :: Maybe (NonEmptyList Int))
    print (toNonEmpty [] :: Maybe (NonEmptyList Int))
    print (toList (1 :| [2, 3]))

    -- for associative functions, f x (f y z) = f (f x y) z
    -- +, *, ++, ., min, max are associative operators
    -- -, ^, : are non associative operators 
    -- haskell has a type class Semigroup for types having a clear associative operation
    -- List is an instance of Semigroup, <> is the associative operation concatenation 

    print ([1] <> [2, 3] <> [4, 5])