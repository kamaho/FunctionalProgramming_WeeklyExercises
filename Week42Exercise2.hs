module Week42Exercise2 where
-----------------------------------------------------------------------------------------------------

    -- a) (½ poeng) Lag funksjonen reverseWords :: String -> String som reverserer hvert ord 
    -- i hver setning, men beholder rekkefølgen på ordene. 
    -- Definisjonen av funksjonen skal være punktløs. 
    -- Du får altså ikke bruke listen som en variabel til funksjonen 
    -- slik som reverseWords xs = ....

    -- For eksempel, med setningen
    
    -- "Alice was beginning to get very tired of sitting by her sister 
    -- on the bank and of having nothing to do",
    
    -- skal funksjonen returnere
    
    -- "ecilA saw gninnigeb ot teg yrev derit fo gnittis yb reh retsis
    --  no eht knab dna fo gnivah gnihton ot od".
    
    -- b) (½ poeng) Lag funksjonen sumIsEven :: Integer -> Integer -> Bool. Funksjonen skal sjekke 
    -- om summen av de to heltallene er et partall. 
    -- Definisjonen av funksjonen skal være punktløs. 
    -- Du får altså ikke bruke variabler for heltallene, slik som sumIsEven m n = ....

-----------------------------------------------------------------------------------------------------
    
    -- a
    reverseWords :: String -> String
    reverseWords = unwords . map reverse . words

    -- b
    sumIsEven :: Integer -> Integer -> Bool
    sumIsEven = (even .) . (+)