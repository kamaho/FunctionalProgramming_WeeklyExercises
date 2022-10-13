module Week41Exercise2 where
    import Data.Map (Map)
    import qualified Data.Map as Map
    
    data Expr a = Var a | Lit Integer | Mul (Expr a) (Expr a) | Add (Expr a) (Expr a) deriving (Eq, Show)
    
    eval :: (Ord variable, Num value => Expr variable -> Map variable value -> Maybe value
    eval (Var x) map = Map.lookup x map
    eval (Lit x) map = Just(fromInteger x)
    eval (Mul a b) map =
        if isNothing (eval a map) || isNothing (eval b map)
            then Nothing
            else Just(fromJust(eval a map) * fromJust (eval b map))
    eval (Add a b) map =
        if isNothing (eval a map) || isNothing (eval b map)
            then Nothing
            else Just (fromJust(eval a map) + fromJust (eval b map))
    