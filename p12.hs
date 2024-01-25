module P12 where

import Data.Typeable

add :: Int -> Int -> Int
add x y = x + y

-- partial application
-- this new function remembers the given argument, waits for another argument, and then gives both to add
addThree = add 3

between :: Int -> Int -> Int -> Bool
between low high x = x <= high && x >= low

customBetween = between 5 10

main = do 
    print (addThree 5)
    print (map customBetween [1, 7, 18])
    
    -- a type like Int -> Int -> Int -> Bool, actually means Int -> (Int -> (Int -> Bool))
    -- a multi-argument function is just a single argument function that returns a function
    -- hence, an expression like between 1 2 3 is same as ((between 1) 2) 3
    -- representing multi-argument functions like this is called currying
    
    print (typeOf between)
    print (typeOf (between 1))
    print (typeOf (between 1 10))
    print (typeOf (between 1 10 7))

    print (map (take 1) ["Hello", "World!"])
    print (map (/2) [0..10])