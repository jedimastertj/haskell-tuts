module P16 where

import Data.List

-- building a list recursively using : op (also used by ++ op internally)
iterator :: (a -> a) -> Int -> a -> [a]
iterator f 0 x = [x]
iterator f n x = x : iterator f (n - 1) (f x) 

-- split a string based on a delimiter
split :: Char -> String -> [String]
split c [] = []
split c xs = start : split c rest
    where start = takeWhile (/= c) xs
          rest = (drop 1 . dropWhile (/= c)) xs

myHead :: [a] -> Maybe a
myHead [] = Nothing
myHead (x : xs) = Just x

myTail :: [a] -> [a]
myTail [] = []
myTail (x : xs) = xs

sumFirstTwo :: [Int] -> Int
sumFirstTwo (a : b : _) = a + b
sumFirstTwo _ = -1

startsWithZero :: [Int] -> Bool
startsWithZero (0 : _) = True
startsWithZero _ = False

myMax :: [Int] -> Int
myMax [] = -1
myMax (x : xs) = max x (myMax xs)

main = do
    -- (:) :: a -> [a] -> [a]
    -- : is a constructor for lists - returns a new linked list node
    -- [] is the other list constructor - denoting empty list
    -- [1, 2, 3] is syntactic sugar for 1 : 2 : 3 : [], more explicitly 1 : (2 : (3 : []))
    print (1 : [2, 3])
    
    print (iterator (*2) 10 1)
    print ((\s -> iterator tail (length s - 1) s) "hello")
    print (split '*' "hello*world")

    -- involve pattern matching on lists using constructors
    print (myHead [1, 2, 3])
    print (myTail [1, 2, 3])
    print (sumFirstTwo [1, 2, 3])
    print (startsWithZero [])

    print (myMax [1, 2, 3, 4, 5])
