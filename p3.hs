module P2 where

-- pattern matching against function arguments
greet :: String -> String -> String
greet "Finland" name = "Hei, " ++ name
greet "India" "Tanishq" = "Admin"
greet "India" name = "Namaste, " ++ name
greet "USA" "Tanishq" = "Admin2"
greet country name = "Hello, " ++ name

username :: String -> Int -> String
username name age = name ++ show age

main = do
    print (greet "Finland" "Tanishq")
    print (greet "India" "Ram")
    print (greet "India" "Tanishq")
    print (greet "USA" "Andrew")
    print (username "Tanishq" 20)