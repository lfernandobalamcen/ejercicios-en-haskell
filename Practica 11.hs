
import Data.Set as S
 
union :: Ord a => Set a -> Set a -> Set a
union = union
 

-- ejemplo,
--    ghci> unionG [fromList [3,2], fromList [2,5], fromList [3,5,7]]
 
unionG:: Ord a => [Set a] -> Set a
unionG = unions
 
--ejemplo,
--    ghci> interseccion (fromList [1..7]) (fromList [4..9])
--    fromList [4,5,6,7]
--    ghci> interseccion (fromList [2..1000000]) 

interseccion :: Ord a => Set a -> Set a -> Set a
interseccion = intersection
 
-- ejemplo,
--    ghci> interseccionG [fromList [3,2], fromList [2,5,3], fromList [3,5,7]]
--    fromList [3]

 
interseccionG:: Ord a => [Set a] -> Set a
interseccionG [c] = c
interseccionG (cs:css) = intersection cs (interseccionG css)

interseccionG2 :: Ord a => [Set a] -> Set a
interseccionG2 = foldr1 interseccion 
 
-- ejemplo,
--    ghci> diferencia (fromList [2,5,3]) (fromList [1,4,5])
--    fromList [2,3]
-- ---------------------------------------------------------------------
 
diferencia :: Ord a => Set a -> Set a -> Set a
diferencia = difference
 

 
