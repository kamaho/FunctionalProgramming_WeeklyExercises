module Week42Exercise1 where
import Data.Either ()
-----------------------------------------------------------------------------------------------------
-- I denne filen skal du lage fire funksjoner.

-- a) (¼ poeng) Lag funksjonen fromLeftAndRight :: (Either a b -> c) -> (a -> c, b -> c), 
-- som splitter opp en funksjon definert på Either a b til en funksjon som fungerer 
-- på a og en som fungerer på b.

-- b) (¼ poeng) Lag funksjonen either' :: (a -> c) -> (b -> c) -> Either a b -> c. 
-- Funksjonen fra Either a b skal gjøre det samme som inputfunksjonene på elementene 
-- fra a og b respektive.

-- c) (¼ poeng) Lag funksjonen toFstAndSnd :: (a -> (b, c)) -> (a -> b, a -> c) som splitter 
-- en funksjon med par som output til to funksjoner ved å plukke ut de to komponentene.

-- d) (¼ poeng) Lag funksjonen pair :: (a -> b) -> (a -> c) -> a -> (b, c) som setter sammen 
-- to funksjoner med samme domene til en funksjon som gir et tuppel ut.

-----------------------------------------------------------------------------------------------------

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
