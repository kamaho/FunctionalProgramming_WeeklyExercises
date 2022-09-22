module Week37Exercise0 where
    
    -- Funksjonen skal lage en liste med strenger på 
    -- formen "_ is _ years old" hvor hvert navn i 
    -- første input settes sammen med en alder fra den
    --  andre inputen (se eksempel nedenfor), 
    --  MEN et element skal kun inkluderes i listen
    -- om alderen er høyst 50 år, de som er eldre skal 
    -- filtreres bort.
    
    namesAndAges :: [String] -> [Integer] -> [String]
    namesAndAges x y = flett (arrangeLst1 x y) (arrangeLst2 x y)

   
    flett :: [[Char]] -> [[Char]] -> [[Char]]
    flett [] _ = []
    flett _ [] = []
    flett (x:xs) (y:ys) = 
        (x ++ " is " ++ y ++ " years old") : flett (xs) (ys) 

      
    arrangeLst1 :: (Ord b, Num b) => [a] -> [b] -> [a]
    arrangeLst1 x y  = fst (filterNamesYears x y)

    arrangeLst2 :: (Show a1, Ord a1, Num a1) => [a2] -> [a1] -> [String]
    arrangeLst2 x y = map show (snd (filterNamesYears x y))


    filterNamesYears :: (Ord b, Num b) => [a] -> [b] -> ([a], [b])
    filterNamesYears x y = (unzip (filter ((<= 50) . snd) z))  where z = zip x y
    
    
    
    
    