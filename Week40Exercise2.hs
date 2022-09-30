module Week40Exercise2 where

    -- Din oppgave er å skrive funksjonen toList :: BinSearchTree a -> [a] som tar 
    -- et binært søketre (som du kan anta er sortert) og returnerer en sortert 
    -- liste med elementene. Bruk rekursjon til å lage funksjonen.

    data BinSearchTree a = Empty | Branch (BinSearchTree a) a (BinSearchTree a)
        deriving (Eq, Show)
    
    t :: BinSearchTree Integer
    t = Branch (Branch (Branch Empty 1 Empty) 3 (Branch Empty 5 Empty)) 8 (Branch Empty 10 Empty)

    toList :: BinSearchTree a -> [a]
    toList (Empty) = []
    toList (Branch l x r) = toList l ++ [x] ++ toList r

    
