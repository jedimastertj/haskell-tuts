module P14 where

import Data.List

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

double :: Int -> Int
double x = x * 2

main = do
    print (filter isPalindrome ["abba","acdc","otto","lothar","anna"])
    -- lambda expressions are useful when you need a function only once
    print (filter (\s -> s == reverse s) ["abba","acdc","otto","lothar","anna"]) 
    print ((\x y -> x^2 + y^2) 4 3)

    -- . and $ are operators used when working with higher order functions (help avoid parentheses)

    -- . is function composition, (f . g) x => f (g x) 
    -- (.) :: (b -> c) -> (a -> b) -> a -> c
    print ((double . double . (+1)) 2)
    print (filter (not . null) [[1, 2, 3], [], [4]])

    -- $ is function application, f $ x => f x
    -- ($) :: (a -> b) -> a -> b
    print (head (reverse "abcd"))
    print (head $ reverse "abcd")

    print (map ($ "string") [reverse, take 2, drop 2])