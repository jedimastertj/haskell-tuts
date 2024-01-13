module P2 where

import Data.Typeable

-- conditionals
login user password = if user == "unicorn73"
                      then if password == "f4bulous!"
                           then "unicorn73 logged in"
                           else "wrong password"
                      else "unknown user"

-- functions with local definitions

circleArea1 :: Double -> Double
circleArea1 r = pi * rsquare
    where pi = 3.1416
          rsquare = r * r

circleArea2 :: Double -> Double
circleArea2 r = let pi = 3.1416
                    rsquare = r * r
                in pi * rsquare

main = do
    print (7.0 / 2.0)
    print (div 7 2)
    print (login "unicorn73" "f4bulous!")
    print (circleArea1 7)
    print (circleArea2 7)