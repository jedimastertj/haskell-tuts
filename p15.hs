module P15 where

import Data.List

-- finds the earliest, longest substring containing only given characters
findSubstring :: String -> String -> String
findSubstring chars = takeWhile (\x -> elem x chars)
                      . dropWhile (\x -> not $ elem x chars) 

main = do
    print (takeWhile even [2, 4, 1, 2, 3])
    print (dropWhile even [1, 2, 4, 6, 8])
    print (findSubstring "abcd" "xxxyyyzabaaxxabcd")
    print (zipWith take [4, 3] ["Hello", "warden"])
    -- identitiy function
    print (map id [1, 2, 3])
    -- constant function
    print (map (const 42) [1, 2, 3])