module P32 where

import Data.Typeable

-- operations like reading input, writing to file, talking over network are called side effects 
-- they can't be represented with pure functional code
-- eg. readUserInput :: String -> String would have to return the same value every time, for it to be pure
-- Monads (eg. IO) are used to represent side effects in Haskell
-- getLine :: IO String means it executes IO action (read from console) and returns a string
-- putStrLn :: String -> IO () means it takes a string and returns an IO action which writes that string to console 
-- main is also an IO action that is executed when the program is run
-- print :: Show a => a -> IO () just combines putStrLn and show

-- can build new IO actions by combining existing ones
-- a do block lists IO actions to be executed in sequence

greet :: IO ()
greet = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello, " ++ name ++ "!")

main = do
    print (typeOf getLine)
    input <- getLine
    print (words input)
    print (typeOf putStrLn)
    val <- putStrLn "Hakuna matata!"
    print val

    greet

    -- map creates a list of IO actions, returning an IO action executes it 
    head (map putStrLn ["A", "B", "C"])