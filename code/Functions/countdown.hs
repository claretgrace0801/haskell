data Op = Add | Sub | Mul | Div

apply :: Op -> Int -> Int -> Int
apply Add x y = x + y
apply Sub x y = x - y
apply Div x y = div x y
apply Mul x y = x * y

valid :: Op -> Int -> Int -> Bool
valid Add _ _ = True
valid Sub x y = x > y
valid Mul _ _ = True
valid Div x y = mod x y == 0

data Expr = Val Int | App Op Expr Expr

eval :: Expr -> [Int]
eval (Val n) = [n | n > 0]
eval (App o l r) = [apply o x y | x <- eval l, 
                        y<- eval r, valid o x y]

values :: Expr -> [Int]
values (Val n) = [n]
values (App _ l r) = values l ++ values r

solution :: Expr -> [Int] -> Int -> Bool
solution e ns n = elem (values e) (choices ns) 
                  && eval e == [n]

exprs :: [Int] -> [Expr]
exprs [] = []
exprs [n] = [Val n]
exprs ns = [e | (ls, rs) <- split ns,
                l <- exprs ls,
                r <- rs,
                e <- combine l r]

combine :: Expr -> Expr -> [Expr]
combine l r = [App o l r | o <- [Add, Sub, Mul, Div]]

solutions :: [Int] -> Int -> [Expr]
solutions ns n = [e | ns' <- choices ns,
                      e <- exprs ns',
                      eval e == [n]]
