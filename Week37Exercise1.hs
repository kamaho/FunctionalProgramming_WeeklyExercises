module Week37Exercise1 where 
    equalCubeSum :: Integer -> [(Integer, Integer, Integer, Integer)]
    equalCubeSum n = [(a,b,c,d)  | a <- [1..n]
                                , b <- [1..n]
                                , c <- [1..n]
                                , d <- [1..n]
                                , (a,b) /= (c,d) 
                                , (a,b) /= (d,c)
                                , a*a*a + b*b*b == c*c*c + d*d*d]