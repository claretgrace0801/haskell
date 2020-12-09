{-
 - Implementing the basic operations of lists. Using list comprehensions.
-}

x = [1, 3..10]
y = []
-- length:
length_self list = sum [1 | _ <- list]

-- head:
head_self list = list !! 0

-- last:
last_self list = list !! (if length_self list > 0 then ((length_self list) - 1) else 0)

-- tail: Pending due to lack of slicing in Haskell

-- init: Pending due to lack of slicing in Haskell

-- take: Pending due to lack of slicing in Haskell

-- drop: Pending due to lack of slicing in Haskell

-- elem:
elem_self list element = if sum [if x == element then 1 else 0 | x <- list] > 0 then True else False


