module Week41Exercise1 where
    import qualified Data.Map as Map
    import Data.Map (Map)
    import qualified Data.Set as Set
    import Data.Set (Set)

    
    type Graph node = Map node (Set node)

    disjoint :: (Ord a) => Set a -> Set a -> Bool
    disjoint x y = Set.null (Set.intersection x y)

    hasCycle :: (Ord n) => Graph n -> n -> Bool
    hasCycle g node = hasCycle' g node Set.empty
    
    hasCycle' :: (Ord n) => Graph n -> n -> Set n -> Bool
    hasCycle' g node x = case Map.lookup node g of
                        Nothing -> False
                        (Just neighbor) -> not (disjoint neighbor x) || or (Set.map (\n -> hasCycle' g n (Set.insert node x)) neighbor)
