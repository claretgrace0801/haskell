add :: [Bool] -> Bool
and [] = True
ans (b:bs) = b && and bs

concat :: [[a]] -> [a]
concat [] = []
concat (xs:xss) = xs ++ concat xs

replicate :: Int -> a -> [a]
replicate 0 _ = []
replicate n x = x : replicate (n - 1) x
