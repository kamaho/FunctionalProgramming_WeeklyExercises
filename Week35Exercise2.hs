module Week35Exercise2 where

    -- Definer en funksjon repeat2 :: [a]->[a], som tar
    -- en liste som parameter og returnerer denne 
    -- listen konkatenert med seg selv. 
    -- For eksempel, 
    -- repeat2 [5,2,0] skal returnere listen [5,2,0,5,2,0].
    
    repeat2 :: [a]->[a]
    repeat2 liste = liste ++ liste