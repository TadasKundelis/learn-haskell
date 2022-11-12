
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' count item
    | count <= 0 = []
    | otherwise = item:replicate' (count - 1) item

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (a:as) (b:bs) = (a, b):zip' as bs

main = do
    print (replicate' 3 "a") -- ["a", "a", "a"]
    print (replicate' 3 "b") -- ["b", "b", "b"]
    print (zip' [1, 2, 3] [4, 5, 6]) -- [(1, 4), (2, 5), (3, 6)]