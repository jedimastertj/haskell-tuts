module P13 where

import Data.Typeable

main = do
    print (1 + 2)
    -- an infix operator can be converted into a prefix function by adding parentheses around it
    print ((+) 1 2)

    -- usecase - zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
    print (zipWith (+) [1, 2, 3] [4, 5, 6])

    print (map (+ 1) [1, 2, 3])
    -- applying a binary function as if it was an infix operator (remember `div`)
    print ((+ 1) `map` [1, 2, 3])