maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

count' :: [Int] -> Char -> [Int]
count' acc '(' = acc ++ [last acc + 1]
count' acc ')' = acc ++ [last acc - 1]

main = do
    print (maximum' [1, 5, 2, 10]) -- 10
    print $ (1 == 1 && null (filter (>3) [1, 2, 3]))
    print $ last [1, 2, 3] + 5
    print $ foldl count' [0] "(())"