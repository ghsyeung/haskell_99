
elementAt :: [a] -> Int -> a

elementAt x i = if i == 1
                then head x
                else elementAt (tail x) (i-1)

-- !! in Prelude module is similar but 0-indexed
elementAt' xs i = xs !! (i-1)

-- More correct pattern matching
elementAt'' (x:_) 1 = x
elementAt'' _ 0 = error "Index out of bounds"
elementAt'' (_:x) i = elementAt'' x (i-1)
elementAt'' _ _ = error "Index out of bounds"
