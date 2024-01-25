module P10 where

makeCool :: String -> String
makeCool s = "Yo " ++ s ++ "!"

-- a function is a value just like a number/list
-- it can be passed as an argument to another function
-- functions that take/return functions are higher-order functions

doTwice :: (a -> a) -> a -> a
doTwice f x = f (f x)

addThree :: Int -> Int
addThree x = x + 3

isPositive :: Int -> Bool
isPositive x = x >= 0

-- type signatures of map and filter use polymorphism

myMap :: (a -> b) -> [a] -> [b]
myMap f [] = []
myMap f list = [f (head list)] ++ myMap f (tail list)

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f [] = []
myFilter f list = front ++ myFilter f (tail list)
    where front = if f (head list) then [head list] else []

main = do
    print (doTwice makeCool "Haskell")

    print (map addThree [1,2,3,4,5])
    print (myMap addThree [1,2,3,4,5])

    print (filter isPositive [-1, 2, -3, 4, -5])
    print (myFilter isPositive [-1, 2, -3, 4, -5])