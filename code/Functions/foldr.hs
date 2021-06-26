import Prelude hiding (foldr, foldl)

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f v [] = v
foldr f v (x:xs) = f x (foldr f v xs)

-- Generic Examples
net = foldr (+) 0
prod = foldr (*) 1
-- or = foldr (||) False
-- and = foldr (&&) True

-- Other examples
len = foldr (\ _ n -> 1 + n) 0
rev = foldr (\ x xs -> xs ++ [x]) []
-- (++ ys) = foldr (:) ys
