module P11 where

import Data.List

boolToInt :: Bool -> Int
boolToInt True = 1
boolToInt False = 0

mapBooleans :: (Bool -> a) -> [a]
mapBooleans f = map f [True, False]

-- constructors as functions
wrapJust :: [a] -> [Maybe a]
wrapJust xs = map Just xs

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

palindromes :: Int -> [String]
palindromes n = filter isPalindrome (map show [1..n])

getIndices :: String -> Char -> Int -> [Int]
getIndices s c ind 
    | ind >= length s = []
    | (s !! ind) == c = [ind] ++ getIndices s c (ind+1)
    | otherwise = getIndices s c (ind+1)

getSubstring :: String -> Int -> Int -> String
getSubstring s ind len = take len (drop ind s)

whatFollows :: String -> Char -> Int -> [String]
whatFollows s c len = map f (getIndices s c 0)
    where f ind = getSubstring s (ind+1) len

main = do
    print (mapBooleans boolToInt)
    print (wrapJust [1,2,3,4,5])
    print (palindromes 150)
    print (tails "echo")
    print (whatFollows "abracadabra" 'a' 2)