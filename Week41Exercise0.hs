module Week41Exercise0 where
    
    import Data.Map (Map)
    import qualified Data.Map as Map
    import Data.Set (Set)
    import qualified Data.Set as Set
        
    type Graph n = Map n (Set n)
    
    -- I denne filen skal du lage funksjonen insertEdge :: (Ord n) => n -> n -> Graph n -> Graph n
    -- som tar to noder og en graf og putter in en kant mellom nodene (i samme retning som du fikk nodene).
    -- Hvis noen av nodene som er gitt ikke finnes i grafen skal du også legge til den noden/de nodene til grafen,
    -- sammen med kanten mellom dem. Tips: bruk Map.insertWith, Set.union, Set.empty, Set.singleton.
    -- Husk at alle noder du legger til i grafen må ha en tilsvarende mengde av barn, 
    -- selv om den mengden kan være tom.
    

    insertEdge :: (Ord n) => n -> n -> Graph n -> Graph n
    insertEdge x y  = Map.insertWith Set.union y Set.empty . Map.insertWith Set.union x (Set.singleton y) 
    -- Map.inserttWith (++) y [] . Map.insertWith (++) x [y]
