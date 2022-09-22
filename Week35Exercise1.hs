module Week35Exercise1 where

    -- Målet med oppgaven er å lage en funksjon som 
    -- regner ut trekanttallene (Lenker til eit ekstern område.)
    -- Trekanttallene er talfølgen man får ved å summere 
    -- de første heltallene. For eksempel er det tredje 
    -- trekanttallet 6, fordi 1 + 2 + 3 = 6.

    triangleNumber :: Integer -> Integer
    triangleNumber n = sum [1 .. n]
