packHelper :: Eq a => a -> [a] -> [a] -> [[a]]
packHelper _ x [] = [x]
packHelper f l (x:xs) = if x == f then packHelper x (x:l) xs else l : packHelper x [x] xs  

pack :: Eq a => [a] -> [[a]]
pack [] = [[]]
pack (x:xs) = packHelper x [x] xs
