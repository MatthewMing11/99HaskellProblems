splitHelper :: [a] -> [a] -> Int -> ([a],[a])
splitHelper x y 0 = (x,y)
splitHelper x []  _ = (x,[])
splitHelper x (y:ys) z = splitHelper (x ++ [y]) ys (z-1)
 
split :: [a] -> Int -> ([a],[a])
split x y = splitHelper [] x y
