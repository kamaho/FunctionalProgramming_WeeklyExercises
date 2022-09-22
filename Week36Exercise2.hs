module Week37Exercise0 where

    -- Et palindrom er et ord som er likt om du
    -- leser det framlengs og baklengs, 
    -- for eksempel "abba", "reser" og "tillit".
    
        -- oppgave 2a
        halfPalindrome :: String -> Maybe String
        halfPalindrome x 
            | x == reverse x = let (a, _) = half x in Just a
            | otherwise = Nothing
        

        half :: [a] -> ([a], [a]) 
        half xs = 
            ((take s xs), (drop s xs))
            where
                s = (length xs ) `div` 2


         -- oppgave 2b
        decomposePalindrome :: String -> Maybe (String, Maybe Char)
        decomposePalindrome x = 
            if x == reverse x
                then Just (y, findLength x)
                else Nothing
                where
                    y = take z (x)
                    z = div(length(x)) 2
    
        findLength :: String -> Maybe Char
        findLength x =
            if even(length x) == True
                then Nothing
                else Just e
                where
                    d = (div(length(x)) 2)
                    e = x !! d

        createPalindrome :: String -> Maybe Char -> String
        createPalindrome s c = case c of
            Just c -> concat [s, [c], reverse s]
            Nothing -> concat [s, reverse s]