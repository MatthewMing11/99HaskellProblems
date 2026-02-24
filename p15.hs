repliHelper :: [a] -> Int -> Int -> [a]
repliHelper [] y z = []
repliHelper (x:xs) y z = if y==z then repliHelper xs 0 z else x : repliHelper (x:xs) (y+1) z

repli :: [a] -> Int -> [a]
repli _ 0 = []
repli x y = repliHelper x 0 y  
