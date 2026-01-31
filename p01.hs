myLast :: [a] -> Maybe a 
myLast [] = Nothing
myLast (x:[]) = Just x
myLast (_:x) = myLast x
