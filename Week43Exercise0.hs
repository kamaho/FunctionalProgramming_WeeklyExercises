module Week42Exercise0 where

    data BinSearchTree a = Empty | Branch (BinSearchTree a) a (BinSearchTree a)
        deriving (Eq, Show)
    
    t :: BinSearchTree Integer
    t = Branch (Branch (Branch Empty 1 Empty) 3 (Branch Empty 5 Empty)) 8 (Branch Empty 10 Empty)
    
    instance Foldable BinSearchTree where

    foldMap' :: Monoid m => (a -> m) -> BinSearchTree a -> m
    foldMap' f Empty = mempty
    foldMap' f (Branch l x r) = foldMap' f l `mappend` f x `mappend` foldMap' f r
    
    foldr' :: (a -> b -> b) -> b -> BinSearchTree a -> b
    foldr' f acc Empty = acc
    foldr' f acc (Branch l x r) = foldr' f (f x (foldr' f acc r)) l
    