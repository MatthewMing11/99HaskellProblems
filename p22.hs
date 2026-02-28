range :: Int -> Int -> [Int]
range x y = if x== y then [x] else x : range (x+1) y
