module P7 where

import Data.Typeable

-- the Maybe type has two constructors: Nothing and Just
-- Maybe a is like [a] except there can only be 0/1 elements

perhapsHead :: [a] -> Maybe a
perhapsHead xs 
    | null xs = Nothing 
    | otherwise = Just (head xs)

intOrZero :: Maybe Int -> Int
intOrZero Nothing = 0
intOrZero (Just i) = i

safeHead :: [Int] -> Int
safeHead xs = intOrZero (perhapsHead xs)

main = do
    print (safeHead [1,2,3])
    print (safeHead [])