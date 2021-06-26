data N = O | S N

s :: N -> N
s n = S n

nat2int :: N -> Int
nat2int O = 0
nat2int (S n) = 1 + nat2int n

int2nat :: Int -> N
int2nat 0 = O
int2nat n = S (int2nat (n - 1))
