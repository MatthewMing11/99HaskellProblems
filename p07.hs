import NestedLists (NestedList(..))
flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem x) = [x]
flatten (List (x: xs)) = flatten x ++ flatten (List xs) 
