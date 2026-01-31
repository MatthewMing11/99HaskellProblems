myButLast :: [a] -> Maybe a
myButLast [] = Nothing
myButLast (x:[])= Nothing
myButLast (x:y:[]) = Just x
myButLast (x:y) = myButLast y