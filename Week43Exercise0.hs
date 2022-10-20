module Week43Exercise0 where

    data BinSearchTree a = Empty
                         | Leaf a
                         | Branch (BinSearchTree a) a (BinSearchTree a)
                           deriving (Eq, Show)

    instance Foldable BinSearchTree where
        foldr f z Empty = z
        foldr f z (Leaf x) = f x z
        foldr f z (Branch l k r) = foldr f (f k (foldr f z r)) l
   
    t :: BinSearchTree Integer
    t = Branch (Branch (Branch Empty 1 Empty) 3 (Branch Empty 5 Empty)) 8 (Branch Empty 10 Empty)

  
