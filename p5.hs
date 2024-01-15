module P5 where

repeatString :: Integer -> String -> String
repeatString n str = helper n str ""

-- recursive helper function
helper :: Integer -> String -> String -> String
helper 0 str result = result
helper n str result = helper (n-1) str (result ++ str)

-- guarded definitions of patterns
guessAge :: String -> Int -> String
guessAge "Griselda" age
    | age < 47 = "Too low!"
    | age > 47 = "Too high!"
    | otherwise = "Correct!"
guessAge "Hansel" age
    | age < 12 = "Too low!"
    | age > 12 = "Too high!"
    | otherwise = "Correct!"
guessAge name age = "Wrong name!"

main = do
    print (repeatString 3 "hello")
    print (guessAge "Hansel" 12)