insertAtHelper :: a -> [a] -> [a] -> Int -> [a]
insertAtHelper w x y 1 = x ++ [w]++ y
insertAtHelper w x (y:ys) z =  insertAtHelper w (x++[y]) ys (z-1) 
insertAt :: a -> [a] -> Int ->  [a]
insertAt x y z = insertAtHelper x [] y z
