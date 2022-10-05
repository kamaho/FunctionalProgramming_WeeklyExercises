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

    import Data.Maybe()
    import Data.List()

    data Palindrome = PalinOdd (String, String)
                    | PalinPart String
        deriving (Show)

    --a)
    palindrome :: String -> Maybe Palindrome
    palindrome x | x /= reverse x = Nothing
                 |  odd (length x) = Just (palinOdd x)
                 |  otherwise = Just (palinPart x)


    palinPart :: String -> Palindrome
    palinPart x = PalinPart (pal0 x)

    palinOdd :: String -> Palindrome
    palinOdd x = PalinOdd (pal0 x, pal1 x)


    pal0 :: String -> String
    pal0 x = take (div (length(x)) 2) (x)

    pal1 :: String -> String
    pal1 x = [(x !! (div (length(x)) 2))]

    -- b)
    toString :: Palindrome -> String 
    toString (PalinPart x) = x ++ reverse (x)
    toString (PalinOdd x) = fst (x) ++ snd (x) ++ reverse (fst x)  