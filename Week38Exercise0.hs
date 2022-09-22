module Week38Exercise0 where

    -- I denne filen skal du bruke rekursjon til å 
    -- lage funksjonen duplicateAll :: [a] -> [(a,a)] 
    -- som tar en liste og dupliserer alle elementene i listen.
    
    duplicateAll :: [a] -> [(a,a)]
    duplicateAll [] = []
    duplicateAll (x:xs) = (x, x) : duplicateAll (xs)
        
     -- For eksempel, duplicateAll [1,2,3] skal returnere [(1,1),(2,2),(3,3)]


    
