module Week36Exercise0 where

    -- Bruk så funksjonene (+), even og not til å lage en 
    -- funksjon f :: Integer -> Integer -> Bool. 
    -- Du behøver kun lage en funksjon av riktig type.
    -- I denne oppgaven bryr vi oss ikke om hva funksjonen gjør.

    f :: Integer -> Integer -> Bool
    f a b = not(even((+)a b))

