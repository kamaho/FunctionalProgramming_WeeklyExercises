module Week40Exercise0 where
    -- Lag en datatype som heter Palindrome som lagrer dataen til et palindrom: 
    -- første halvparten av ordet og midtbokstaven hvis ordet har oddetallslengde.

    -- a) (½ poeng) Lag funksjonen palindrome :: String -> Maybe Palindrome som tar 
    -- en streng og hvis den er et palindrom, lagrer tilsvarende data som et element 
    -- av typen Palindrome og returnerer det elementet med Just. Om strengen ikke er 
    -- et palindrom skal funksjonen returnere Nothing.
    
    -- b) (½ poeng) Lag funksjonen toString :: Palindrome -> String som tar 
    -- et element av typen Palindrome og returnerer strengen med tilsvarende palindrom.
    
    -- Obs: "" er et palindrom av partallslengde (uten midtbokstav) og "a" er et palindrom 
    -- av oddetallslengde (med 'a' som midtbokstav).
    
    half :: [a] -> ([a], [a]) 
    half xs = ((take s xs), (drop s xs)) where s = (length xs ) `div` 2

    data Palindrome = Palindrome String

    palindrome :: String -> Maybe Palindrome
    palindrome x 
        | x == reverse x = let (a, _) = half x in Just a
        | otherwise = Nothing

    