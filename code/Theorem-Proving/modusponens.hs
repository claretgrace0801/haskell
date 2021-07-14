data Rule = MP | Assumption
-- ((A, B), C) is equiv to (A => B) => C

data Term = Val String | Implies Term Term

data Proof = Proof Term [Term] Rule [Proof]

-- A => B, A implies B       
-- B [A, (A, B)] MP []

exists :: Term -> [Term] -> Bool
exists c assumptions = c `elem` assumptions

eval :: Proof -> Bool
eval (Proof c assumptions Assumption proofs) = exists c assumptions
eval _ = False
