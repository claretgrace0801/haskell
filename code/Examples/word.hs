len :: [Char] -> Int
len [] = 0
len (x:xs) = 1 + len xs

-- [1,2,3] == (1:(2:(3)))

f :: [Char] -> Bool
f x = len x > 3
