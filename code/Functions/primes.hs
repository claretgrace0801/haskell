factors :: Int -> [Int]
factors n = [x | x <- [1..n], mod n x == 0]

prime :: Int -> Bool
prime n = factors n == [1, n]

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]
