-- Solving the Countdown Problem:

-- Given, a :: [Int] and n :: Int find all possibilities
-- such that we can form an expression with arithmetic
-- operators (+, -, *, /) over a to yield n

-- Formalize the problem

-- Operation definiton
data Op = Add | Sub | Mul | Div

-- What is a valid operation?
valid :: Op -> Int -> Int -> Bool
valid Add _ _ = True
valid Sub x y = x > y
valid Mul _ _ = True
valid Div x y = mod x y > 0

-- Application
apply :: Op -> Int -> Int -> Int
apply Add x y = x + y
apply Sub x y = x - y
apply Mul x y = x * y
apply Div x y = div x y

-- Expression definiton
data Exp = Val Int | App Op Exp Exp

values :: Exp -> [Int]
values (Val n) = [n]
values (App _ l r) = values l ++ values r

eval :: Exp -> [Int]
eval (Val n) = [n | n > 0]
eval (App o l r) = [apply o x y | x <- eval l, 
                                  y <- eval r, 
                                  valid o x y]

subbags :: [a] -> [[a]]
subbags xs = [zs | ys <- subs xs, zs <- perms ys]

solution :: Expr -> [Int] -> Int -> Bool
solution :: e ns n = elem (values e) (subbags ns) && eval e == [n]

-- Implementation

split :: [a] -> []
