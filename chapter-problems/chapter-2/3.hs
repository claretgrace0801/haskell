main = print (a [1 .. 5])

a xs = sum (drop (length xs - 1) (take (length xs) xs))