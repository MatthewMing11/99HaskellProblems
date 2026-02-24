import NestedLists (Encoding(..))

encodeDirectHelper :: Eq a => a -> Encoding a -> [a] -> [Encoding a]
encodeDirectHelper _ x [] = [x]
encodeDirectHelper x (Single y) (z:xs) = if x==z then encodeDirectHelper x (Multiple 2 y) xs else (Single y) : encodeDirectHelper z (Single z) xs
encodeDirectHelper x (Multiple y1 y2) (z:xs) = if x == z then encodeDirectHelper x (Multiple (y1+1) y2) xs else (Multiple y1 y2) : encodeDirectHelper z (Single z) xs

encodeDirect :: Eq a => [a] -> [Encoding a]
encodeDirect (x:xs) = encodeDirectHelper x (Single x)  xs 
