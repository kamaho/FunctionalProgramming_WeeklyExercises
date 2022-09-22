module Week38Exercise2 where
    
    -- I denne filen skal du bruke rekursjon til å lage funksjonen 
    -- removeNothing :: [Maybe a] -> [a] som tar en liste med 
    -- elementer av typen Maybe a og tar bort alle
    -- elementene som er Nothing og plukker ut 
    -- verdien fra alle elementene som er Just _.

    removeNothing :: [Maybe a] -> [a]
    removeNothing [] = []
    removeNothing (x:xs) = case x of
        Just x -> x :removeNothing xs
        Nothing -> removeNothing xs
