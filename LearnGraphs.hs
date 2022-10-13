module LearnGraphs where

-- Her definerer vi hva en undirected edge (kant) er
-- show funksjonen brukes slik at man kan printe ut infoen i terminalen.
data Uedge a = Ue (a,a) deriving Show

-- Her definerer vi en kant mellom noder. Ue står for undirected edge 
-- og er en kant uten bestemt retning feks a-----b, og ikke a----->b
(<->) :: a -> a -> Uedge a
(<->) a b = Ue (a,b)

-- Her definerer vi equality (==) litt usikker på hvorfor
instance Eq a => Eq (Uedge a) where
    (==) (Ue (a,b)) (Ue (a1,b1)) = (a == a1 && b==b1) || (a == b1 && b == a1)


-- Her definerer vi hva en Graph er
data Graph a = G [Uedge a] deriving Show

-- Her har vi lagd en graf hvor det er kanter mellom a-b, b-c og a-c
g :: Graph Char
g = G [Ue ('a','b'), Ue('b','c'), Ue('a','c')]

