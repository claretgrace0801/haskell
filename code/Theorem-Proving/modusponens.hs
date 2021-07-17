data Rule = MP | Assumption
data Term = Val String | Implies Term Term
data Proof = Proof Term [Term] Rule [Proof]

eval :: Term -> 

exists :: Term -> [Term] -> Bool
exists 

-- Assumption Rule:
-- Proof A [A, A => B] Assumption []
-- eval :: Proof -> Bool
-- eval (Proof c assumptions Assumption proofs) = exists c assumptions
-- eval _ = False
