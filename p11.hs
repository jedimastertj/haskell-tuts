module P11 where

-- constructors as functions
wrapJust :: [a] -> [Maybe a]
wrapJust xs = map Just xs

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

palindromes :: Int -> [String]
palindromes n = filter isPalindrome (map show [1..n])

getIndices :: String -> Char -> Int -> [Int]
getIndices s c n 
    | n >= length s = []
    | (s !! n) == c = [n] ++ getIndices s c (n+1)
    | otherwise = [-1] ++ getIndices s c (n+1)

getSubstring :: String -> Int -> Int -> String
getSubstring s i n = take n (drop i s)

whatFollows :: String -> Char -> Int -> [String]
whatFollows s c n = map f (filter isPositive (getIndices s c 0))
    where f x = getSubstring s (x+1) n
          isPositive x = x >= 0

main = do
    print (wrapJust [1,2,3,4,5])
    print (palindromes 150)
    print (whatFollows "abracadabra" 'a' 2)