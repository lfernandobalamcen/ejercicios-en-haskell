

paresRecursivo :: [Integer] -> [Integer]
paresRecursivo [] = []
paresRecursivo (x:xs) | even x = x : paresRecursivo xs|otherwise = paresRecursivo xs