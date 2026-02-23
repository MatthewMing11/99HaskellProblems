import NestedLists (Encoding(..))

packHelper :: Eq a => a -> [a] -> [a] -> [[a]]
packHelper _ x [] = [x]
packHelper f l (x:xs) = if x == f then packHelper x (x:l) xs else l : packHelper x [x] xs  

pack :: Eq a => [a] -> [[a]]
pack [] = [[]]
pack (x:xs) = packHelper x [x] xs

encodeHelper :: [[a]] -> [Encoding a]
encodeHelper [[]] = []
encodeHelper [x] = if (length x > 1) then [Multiple (length x) (head x)] else [Single (head x)]
encodeHelper (x:xs) = if (length x >1) then (Multiple (length x) (head x)) : (encodeHelper xs) else (Single (head x)) : (encodeHelper xs)

encodeModified :: Eq a => [a] -> [Encoding a]
encodeModified x = encodeHelper (pack x) 
