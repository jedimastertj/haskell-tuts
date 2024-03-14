module P23 where

import Data.Typeable

-- defining a new algebraic type
-- types that list a bunch of possible values are called enumerations (enums)

data Color = Red | Green | Blue

rgb :: Color -> [Double]
rgb Red = [1, 0, 0]
rgb Green = [0, 1, 0]
rgb Blue = [0, 0, 1]

-- report contains an id, title and a body
-- ConstructReport is a constructor

data Report = ConstructReport Int String String

-- functions to get/set the fields of a record (immutable)
getReportContent :: Report -> String
getReportContent (ConstructReport id title body) = show id ++ ". " ++ title ++ " -> " ++ body

setReportContent :: Report -> String -> String -> Report
setReportContent (ConstructReport id _ _) title body = ConstructReport id title body

report1 :: Report
report1 = ConstructReport 1 "Great performance!" "Promotion on the way!"

-- things on RHS of data declaration are constructors
-- a type can have multiple constructors, and each constructor can have zero/multiple fields
-- Joker is a constructor with no fields, all others have one field
-- deriving Show makes Card an instance of the Show typeclass (so we can print it)

data Card = Joker | Heart Int | Diamond Int | Club Int | Spade Int | Ace String | King String | Queen String | Jack String
    deriving Show

-- algebraic type is a sum of constructors, each of which is a product of fields
-- hence we can count the number of possible values

main = do
    print (rgb Red)
    print (getReportContent report1)
    print (getReportContent (setReportContent report1 "Bad performance!" "You're fired!"))
    print (typeOf Joker)
    print (typeOf Heart)
    print (typeOf King)
    print (map Spade [1, 2, 3])