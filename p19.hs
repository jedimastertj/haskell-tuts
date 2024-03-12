module P19 where

-- crunches/folds a list of many values into a single value
sumNumbers :: [Int] -> Int
sumNumbers [] = 0
sumNumbers (x:xs) = x + sumNumbers xs

sumNumbers2 :: [Int] -> Int
sumNumbers2 nums = myFoldr (+) 0 nums

-- performs a right associative fold over a Foldable data structure
myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f defaultVal [] = defaultVal
myFoldr f defaultVal (x : xs) = f x (myFoldr f defaultVal xs)

-- visualizing map using foldr
myMap :: (a -> b) -> [a] -> [b]
myMap f nums = foldr helper [] nums
    where helper x xsF = f x : xsF 

main = do
    print (sumNumbers [1 .. 10])
    print (sumNumbers2 [1 .. 10])
    print (foldr (+) 0 [1 .. 10])
    print (myMap (* 2) [1 .. 10])