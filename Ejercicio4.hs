num :: Integer -> Integer -> Integer
num x y = div ((x + y) + abs(x - y)) 2

mayor :: Integer -> Integer -> Integer -> Integer -> Integer
mayor w x y z = num (num w x) (num y z)