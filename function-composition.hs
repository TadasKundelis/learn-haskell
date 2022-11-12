main = do
    print $ map (negate . abs) [4, -2, 5, -3, 1] -- [-4,-2,-5,-3,-1]
