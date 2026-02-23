packHelper :: Eq a => a -> [a] -> [a] -> [[a]]
packHelper _ x [] = [x]
packHelper f l (x:xs) = if x == f then packHelper x (x:l) xs else l : packHelper x [x] xs  

pack :: Eq a => [a] -> [[a]]
pack [] = [[]]
pack (x:xs) = packHelper x [x] xs

encodeHelper :: [[a]] -> [(Int, a)]
encodeHelper [[]] = []
encodeHelper [x] = [(length x, head x)]
encodeHelper (x:xs) = (length x, head x) : (encodeHelper xs) 

encode :: Eq a => [a] -> [(Int, a)]
encode x = encodeHelper (pack x)

