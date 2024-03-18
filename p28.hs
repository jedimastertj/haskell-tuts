module P28 where

import Data.List
import Data.Ord

-- modelling with boxes
-- money can simply be represented as an int, so we don't need a new type per se
-- but we can make it a boxed int, to make it more explicit and restrict/add operations that can be done on it 

data Money = Money Int
    deriving Show

renderMoney :: Money -> String
renderMoney (Money cents) = "$" ++ show (fromIntegral cents / 100)

(+!) :: Money -> Money -> Money
(Money a) +! (Money b) = Money (a + b)

addVat :: Money -> Money
addVat (Money a) = Money (round (fromIntegral a * 1.24))

m1, m2, m3 :: Money
m1 = Money 100
m2 = Money 200
m3 = addVat (m1 +! m2)

data Person = Person {name :: String, age :: Int}
    deriving Show

-- modelling with cases
-- it's useful to think of types as defining a set of possible cases and functions handling those cases
-- hence, we won't typo the field name (unlike with strings) and don't need a 0/1 flag for sort order

data SortOrder = Asc | Desc
data SortField = Name | Age

ascSort :: SortField -> [Person] -> [Person]
ascSort Name list = sortBy (comparing name) list
ascSort Age list = sortBy (comparing age) list

sortPeople :: SortOrder -> SortField -> [Person] -> [Person]
sortPeople Asc field list = ascSort field list
sortPeople Desc field list = reverse (ascSort field list)

people :: [Person]
people = [Person "Alice" 25, Person "Bob" 30, Person "Charlie" 20]

main = do
    print (renderMoney m3)
    print (sortPeople Asc Name people)
    print (sortPeople Desc Age people)