import NestedLists (Encoding(..))

decodeModified :: [Encoding a]-> [a]
decodeModified [] = []
decodeModified (Single x: xs) = x : (decodeModified xs)
decodeModified ((Multiple x y):xs) = if x> 0 then y : decodeModified ((Multiple (x-1) y):xs) else decodeModified xs
