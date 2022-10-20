module Week42Exercise1 where
import Data.Either ()
    -- a

fromLeftAndRight :: (Either a b -> c) -> (a -> c, b -> c)
fromLeftAndRight f = (f . Left, f . Right)


    -- b
either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' f g (Left a) = f a 
either' f g (Right b) = g b

-- Either = Left (1,2,3) || Right (4,5)

    -- c
toFstAndSnd :: (a -> (b, c)) -> (a -> b, a -> c)
toFstAndSnd f = (fst .f, snd .f)


    -- d

pair :: (a -> b) -> (a -> c) -> a -> (b, c)
pair f g a = (f a, g a)
