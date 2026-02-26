rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate x 0 = x
rotate (x:xs) y = if y>0 then rotate (xs ++ [x]) (y-1) else rotate (xs ++ [x]) (length (x:xs) + y -1)
