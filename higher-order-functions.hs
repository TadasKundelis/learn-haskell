applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x = x : filter p xs
    | otherwise = filter p xs

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p xs = [x | x <- xs, p x]

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

largestDivisible :: (Integral a) => a -> a
largestDivisible a = head (filter p [1000,999..])
    where p x = x `mod` a == 0

main = do
    print (applyTwice (+2) 10) -- 10 + 2 + 2 = 14 
    print (applyTwice (++ "Hey ") "How") -- How Hey Hey
    print (applyTwice (3:) [1])-- [3,3,1]
    print (zipWith' (+) [1, 2, 3] [4, 5, 6]) -- [5,7,9]
    print (zipWith' (+) [1, 2, 3] [4, 5]) -- [5,7] (unequal list lengths)
    print (zipWith' (zipWith' (*)) [[1, 2, 3], [4, 5, 6]] [[1, 2, 3], [4, 5, 6]]) -- [[1,4,9],[16,25,36]]
    print (map' (+3) [1, 2, 3]) -- [4,5,6]
    print (map' (replicate 3) [3..6]) -- [[3,3,3],[4,4,4],[5,5,5],[6,6,6]]
    print (filter' (>3) [3..6]) --1 [4,5,6] 
    print (quicksort [4,3,9,7,6]) -- [3,4,6,7,9]
    print (largestDivisible 36) -- 972 