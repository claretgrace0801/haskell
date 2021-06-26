remLast :: [a] -> [a]

remLast [] = []
remLast [_] = []
remLast (x:xs) = x : remLast xs
