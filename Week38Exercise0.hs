module Week38Exercise0 where

    duplicateAll :: [a] -> [(a,a)]
    duplicateAll [] = []
    duplicateAll [x] = zip[x][x] 


    
    -- For eksempel, duplicateAll [1,2,3] skal returnere [(1,1),(2,2),(3,3)]