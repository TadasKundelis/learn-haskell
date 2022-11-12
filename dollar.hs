-- apply a list of functions to a value
main = do
    print $ map ($ 3) [(+4), (10*), (*3)] -- [7,30,9]