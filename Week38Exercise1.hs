module Week38Exercise1 where
    
    -- I denne filen skal du bruke rekursjon til å lage 
    -- funksjonen mySplitAt :: Integer -> [a] -> ([a],[a]) 
    -- som tar et tall n og deler opp listen slik at den 
    -- første komponenten inneholder (som mest) n elementer og
    -- den andre komponenten inneholder resten av listen. 
    -- Om n er mindre enn 1 skal mySplitAt returnere tom liste
    -- på første komponenten i tupelen.

    mySplitAt :: Integer -> [a] -> ([a],[a])
    mySplitAt _ []      = ([], [])
    mySplitAt n (x:xs)
        |n<=0 = ([], x:xs)
        |otherwise = let (split1, split2) = mySplitAt (n-1) xs
            in (x:split1, split2)

