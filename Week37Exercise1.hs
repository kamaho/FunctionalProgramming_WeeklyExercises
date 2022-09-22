module Week37Exercise1 where 

    -- I filen skal du bruke list comprehension til å lage 
    -- funksjonen equalCubeSum :: Integer -> [(Integer, Integer, Integer, Integer)] 
    -- som, gitt n :: Integer, returnerer en liste med alle 
    -- tupler av heltall (a,b,c,d) :: (Integer, Integer, Integer, Integer) slik at  og ,
    -- med  og . For eksempel, equalCubeSum 12 skal returnere en 
    -- liste som inneholder (1,12,9,10) og eventuelt permutasjoner 
    -- av denne dekomposisjonen.

    equalCubeSum :: Integer -> [(Integer, Integer, Integer, Integer)]
    equalCubeSum n = [(a,b,c,d)  | a <- [1..n]
                                , b <- [1..n]
                                , c <- [1..n]
                                , d <- [1..n]
                                , (a,b) /= (c,d) 
                                , (a,b) /= (d,c)
                                , a*a*a + b*b*b == c*c*c + d*d*d]