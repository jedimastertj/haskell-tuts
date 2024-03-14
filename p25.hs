module P25 where

-- defining a binary tree
data BinTree a = Node a (BinTree a) (BinTree a) | Empty
    deriving Show

myTree :: BinTree Int
myTree = Node 0 (Node 1 (Node 2 Empty Empty) (Node 3 Empty Empty))
                (Node 4 Empty Empty)

getHeight :: BinTree a -> Int
getHeight Empty = 0
getHeight (Node val left right) = 1 + max (getHeight left) (getHeight right)

-- types of fields give little info on the intended content for the field
-- can use record syntax to give fields names while defining the datatype
-- we also get accessor functions for the fields

data Person = MakePerson {name :: String, age :: Int, town :: String, state :: String, profession :: String}
    deriving Show

person1 :: Person
person1 = MakePerson {name = "John", town = "New York", age = 25, profession = "Engineer", state = "NY"}

main = do
    print (getHeight myTree)
    print person1
    print (name person1)