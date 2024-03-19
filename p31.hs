module P31 where

-- using datatypes (closed abstraction)
-- set of cases is closed/fixed
-- good for small, fixed set of cases

data Vehicle = Car String | Airplane String

sound :: Vehicle -> String
sound (Car make) = make ++ " brum brum"
sound (Airplane make) = make ++ " zoooom"

-- using type classes (open abstraction)
-- set of cases is open, can add new instances later/in other modules (eg. Bike')
-- good for providing extensibility

class Vehicle' a where
    sound' :: a -> String

data Car' = Car' String
data Airplane' = Airplane' String

instance Vehicle' Car' where
    sound' (Car' make) = make ++ " brum brum"

instance Vehicle' Airplane' where
    sound' (Airplane' make) = make ++ " zoooom"

main = do
    print (sound (Car "Ferrari"))
    print (sound' (Airplane' "Boeing"))