data Expr = Val Int
          | Add Expr Expr
          | Mul Expr Expr

eval :: Expr -> Int
eval (Val n) = n
eval (Add x y) = eval x + eval y
eval (Mul x y) = eval x * eval y
