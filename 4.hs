myLength :: [a] -> Int

myLength [] = 0
myLength (_:xs) = 1 + myLength xs


-- with accumulator
myLength' xs = myLength_acc xs 0
            where 
              myLength_acc [] i = i
              myLength_acc (_:xs) i = myLength_acc xs (i+1)

-- with foldl (reduce)
myLength'' xs = foldl (\a _ -> a + 1) 0 xs

-- with composition
-- why foldr?
myLength''' = foldr ((+) . (const 1)) 0
