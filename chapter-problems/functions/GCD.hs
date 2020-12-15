main = print (myGCD 34 17)

myGCD :: Int -> Int -> Int
myGCD 0 y = y
myGCD x 0 = x
myGCD x y | x < y = myGCD x (y `mod` x)
          | otherwise = myGCD (x `mod` y) y
