module Week36Exercise1 where

    -- Bruk så funksjonene (>) og sum til å lage en funksjon
    -- f :: [Integer] -> Integer -> Bool. 
    -- Du behøver kun lage en funksjon av riktig type.
    -- I denne oppgaven bryr vi oss ikke om hva 
    -- funksjonen gjør.

    f :: [Integer] -> Integer -> Bool
    f x y = (>) (sum x) y