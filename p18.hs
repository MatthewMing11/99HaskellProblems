sliceHelper :: [a] -> Int -> Int -> Int -> [a]
sliceHelper (w:ws) x y z
	| null ws  && (x< y || x>=(z+1)) = []
	| null ws = [w]  
	| x < y = sliceHelper ws (x+1) y z
	| x < z+1 = w : sliceHelper ws (x+1) y z
	| otherwise = []

slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice x y z = if y > z then [] else sliceHelper  x 1 y z
