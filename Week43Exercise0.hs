module Week43Exercise0 where
-----------------------------------------------------------------------------------------------------

    -- a) (½ poeng) Lag en instans av Foldable for BinSearchTree, i.e. du skal 
    -- lage funksjonen foldr for BinSearchTree. Du får ikke bruke deriving Foldable.

    -- b) (½ poeng) Lag funksjonen toList :: BinSearchTree a -> [a] som tar 
    -- et binært søketre (som du kan anta er sortert) og returnerer en sortert 
    -- liste med elementene ved hjelp av foldr som du definerte i a). 
    -- Du får altså ikke bruke rekursjon til å definere funksjonen.

-----------------------------------------------------------------------------------------------------

    -- Binary Serach Tree to test code
    t :: BinSearchTree Integer
    t = Branch (Branch (Branch Empty 1 Empty) 3 (Branch Empty 5 Empty)) 8 (Branch Empty 10 Empty)

    -- Defininition for datatype Binary Search Tree
    data BinSearchTree a = Empty
                         | Leaf a
                         | Branch (BinSearchTree a) a (BinSearchTree a)
                           deriving (Eq, Show)

    -- declaring instance of Foldable 
    instance Foldable BinSearchTree where
        foldr f z Empty = z
        foldr f z (Leaf x) = f x z
        foldr f z (Branch l k r) = foldr f (f k (foldr f z r)) l

    -- Creating toList function which put values from Foldable back in to a list.
    toList :: Foldable t => t a -> [a]
    toList t = foldr (:) [] t
 