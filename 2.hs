
myButLast (a:b:[]) = a
myButLast (a:as) = myButLast as

-- init takes all but last element
myButLast' = last . init
