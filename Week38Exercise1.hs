module Week38Exercise1 where

    mySplitAt :: Integer -> [a] -> ([a],[a])
    mySplitAt _ []      = ([], [])
    mySplitAt n (x:xs)
        |n<=0 = ([], x:xs)
        |otherwise = let (split1, split2) = mySplitAt (n-1) xs
            in (x:split1, split2)

