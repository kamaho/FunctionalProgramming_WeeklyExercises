module Week42Exercise0 where
-----------------------------------------------------------------------------------------------------  

    -- I denne filen skal du lage funksjonen applyFunctions :: [a -> b] -> [a] -> [b] som tar 
    -- en liste med funksjoner og en liste med verdier og appliserer 
    -- tilsvarende funksjon på tilsvarende verdi. 
    -- Funksjonen skal stoppe når den korteste av listene [a -> b] og [a] tar slutt. 
    -- Om enten listen med funksjoner eller listen med verdier er tom skal funksjonen 
    -- returnere en tom liste.

-----------------------------------------------------------------------------------------------------
    
    applyFunctions :: [a -> b] -> [a] -> [b]
    applyFunctions _ [] = []
    applyFunctions [] _ = []
    applyFunctions (x:xs) (y:ys) = head (map x [y]) : applyFunctions xs ys
