module P17 where

-- in Haskell, an operator is anything built from characters !#$%&*+./<=>?@\^|-~
-- can be defined like functions
(+++) :: String -> String -> String
(+++) a b = a ++ "#" ++ b

keepElements :: [Int] -> [Bool] -> [Int]
-- keepElements xs bs = _ (zip xs bs)
-- keepElements xs bs = map _ (zip xs bs)
-- keepElements xs bs = map fst (filter _ (zip xs bs))
keepElements xs bs = map fst (filter snd (zip xs bs))

main = do    
    -- list comprehension - combines the power of map and filter 
    print [x^2 | x <- [1..10], odd x]
    print [reverse word | word <- words "Hello World"]
    -- can even do pattern matching
    print [char | (char : _) <- words "Hello World"]

    print ("Cool" +++ "string")

    -- typed holes (_*) can be used to infer correct type for an expression at a given place
    -- uncomment definitions given above, one at a time and read first line of the error message
    print (keepElements [5, 6, 7, 8] [True, False, True, False])