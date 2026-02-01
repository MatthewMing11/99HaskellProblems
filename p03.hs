elementAt :: [a] -> Int -> Maybe a
elementAt (x:_) 1 = Just x
elementAt [] y = Nothing
elementAt (x:xs) y = elementAt xs (y-1)
