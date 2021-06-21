perfects :: Int -> [Int]

factors x = [ i | i <- [1 .. x], mod x i == 0, i /= x]
perfects n = [ x |  x <- [1 .. n], sum (factors x) == x]
