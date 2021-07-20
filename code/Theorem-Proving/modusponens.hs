data Rule = MP | Assumption
data Term = Val String | Implies Term Term
data Proof = Proof Term [Term] Rule [Proof]

instance Eq Term where
    (Val p) == (Val q) = p == q
    (Implies a b) == (Implies p q) = a == p && b == q
    _ == _ = False

instance Eq Rule where
    MP == MP = True
    Assumption == Assumption = True
    _ == _ = False

instance Eq Proof where
    Proof c1 assms1 rule1 subproofs1 == Proof c2 assms2 rule2 subproofs2
        = c1 == c2 && assms1 == assms2 && rule1 == rule2 && subproofs1 == subproofs2

isProof p =
  case p of
    Proof c assms Assumption [] -> c `elem` assms
    Proof c1 assms MP [Proof (Implies a1 c2) assms1 rule1 sub1, Proof a2 assms2 rule2 sub2]
      | a1 == a2 && c1 == c2 ->
        elem a1 assms2 && isProof (Proof (Implies a1 c1) assms1 rule1 sub1)
    _ -> False