module P9 where

-- a case-of expression is used to pattern match on values other than function arguments
sentenceType1 :: String -> String
sentenceType1 sentence = case last sentence of '.' -> "statement"
                                               '?' -> "question"
                                               '!' -> "exclamation"
                                               c -> "not a sentence"

-- it can always be replaced with a helper function 
sentenceType2 sentence = classify (last sentence)
    where classify '.' = "statement"
          classify '?' = "question"
          classify '!' = "exclamation"
          classify _   = "not a sentence"

main = do
    print (sentenceType1 "Hello, world!")
    print (sentenceType2 "Anyone there?")