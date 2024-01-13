module P1 where

import Data.Typeable

-- the golden ratio
phi :: Double
phi = (1 + sqrt 5) / 2

-- function with type annotation
polynomial :: Double -> Double
polynomial x = x^2 - x - 1

-- function without type annotation
f x = polynomial (polynomial x)

main = do
    print (polynomial phi)
    print (f phi)
    print (typeOf f)