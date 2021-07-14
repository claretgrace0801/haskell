len :: [Char] -> Int
len [] = 0
len (x:xs) = 1 + len xs

f :: [Char] -> Bool
f x = len x > 3
