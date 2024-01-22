module P8 where

-- the type Either a b has 2 constructors: Left and Right
-- Left takes an argument of type a, Right takes an argument of type b
-- e.g. it would be nice if we could add an error message with Nothing

readInt :: String -> Either String Int
readInt "0" = Right 0
readInt "1" = Right 1
readInt s = Left ("Unsupported string: " ++ s)

-- haskell lists can only contain elements of same type
-- we can use Either to create a list of elements of 2 types
-- e.g. tracking event participation with possibility of adding an explanation (if missing)

lectureParticipants :: [Either String Int]
lectureParticipants = [Right 1, Right 2, Left "On vacation", Right 4, Left "Sick"] 

main = do
    print (readInt "0")
    print (readInt "1")
    print (readInt "2")
    print lectureParticipants