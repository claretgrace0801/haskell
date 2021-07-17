len :: [a] -> Int
len [] = 0
len (n:ns) = 1 + len ns

xs = [1,2..]
-- S = {x | x \in {1, 2, 3, ...}, x % 2 == 0}
evens = [x | x <- xs, mod x 2 == 0]

firstFourEvens = [x | x <- evens, x <= 8]
