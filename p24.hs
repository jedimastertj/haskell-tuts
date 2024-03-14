module P24 where

-- defining a parameterized datatype
-- a is type variable
-- can have multiple type parameters: data Either a b = Left a | Right b 

data Maybe2 a = None | Justt a 
    deriving Show

name :: Maybe2 String
name = Justt "Tanishq"

age :: Maybe2 Int
age = Justt 21

-- defining a recursive, parameterized datatype
data List a = Empty | Node a (List a) 
    deriving Show

-- can pattern match on constructors
ihead :: List a -> Maybe2 a
ihead Empty = None
ihead (Node x xs) = Justt x

itail :: List a -> List a
itail Empty = Empty
itail (Node x xs) = xs

ilength :: List a -> Int
ilength Empty = 0
ilength (Node x xs) = 1 + ilength xs

inull :: List a -> Bool
inull Empty = True
inull _ = False

myList :: List Int
myList = Node 1 (Node 7 (Node 22 Empty))

main = do
    print "Hello, world!"
    print name
    print (ihead myList)
    print (itail myList)
    print (ilength myList)
    print (inull myList)