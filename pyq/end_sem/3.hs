applylistfun :: [a -> b] -> a -> [b]
applylistfun [] _ = []
applylistfun (f:fs) x = f x : applylistfun fs x
