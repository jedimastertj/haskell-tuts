module P10 where

makeCool :: String -> String
makeCool s = "Yo " ++ s ++ "!"

-- a function is a value just like a number/list
-- it can be passed as an argument to another function
-- functions that take/return functions are higher-order functions

doOnce :: (a -> a) -> a -> a
doOnce f x = f x

doTwice :: (a -> a) -> a -> a
doTwice f x = doOnce f (doOnce f x)

addThree :: Int -> Int
addThree x = x + 3

isPositive :: Int -> Bool
isPositive x = x >= 0

main = do
    print (doOnce makeCool "Haskell")
    print (doTwice makeCool "Haskell")
    -- map :: (a -> b) -> [a] -> [b]
    print (map addThree [1,2,3,4,5])
    -- filter :: (a -> Bool) -> [a] -> [a]
    print (filter isPositive [-1, 2, -3, 4, -5])