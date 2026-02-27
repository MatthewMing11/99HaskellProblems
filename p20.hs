removeAtHelper :: Int -> a ->[a] -> [a] -> (a,[a])
removeAtHelper w x y (z:zs) = if w == 1 then (z,y++zs) else removeAtHelper (w-1) z (y++[z]) zs 

removeAt :: Int -> [a] -> (a,[a]) -- following problem as written
removeAt x (y:ys) = removeAtHelper x y [] (y:ys)  
