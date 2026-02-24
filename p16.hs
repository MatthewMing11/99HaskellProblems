dropEveryHelper :: [a] -> Int -> Int ->[a]
dropEveryHelper [] _ _ = []
dropEveryHelper (x:xs) y z = if y==z then dropEveryHelper xs 1 z else x : dropEveryHelper xs (y+1) z

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery x 1 = []
dropEvery x y = if y<1 then x else dropEveryHelper x 1 y -- return original list if invalid int

