myLast (x:[]) = x
myLast (x:xs) = myLast xs

myLast1 = head . reverse
