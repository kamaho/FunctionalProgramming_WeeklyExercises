module Week42Exercise2 where
    -- a
    reverseWords :: String -> String
    reverseWords = unwords . map reverse . words

    -- b
    sumIsEven :: Integer -> Integer -> Bool
    sumIsEven = (even .) . (+)