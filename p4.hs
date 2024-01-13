module P3 where

-- recursion
tribonacci :: Int -> Int
tribonacci 0 = 0
tribonacci 1 = 1
tribonacci 2 = 1
tribonacci n = tribonacci (n-1) + tribonacci (n-2) + tribonacci (n-3)

main = do
    print (tribonacci 7)