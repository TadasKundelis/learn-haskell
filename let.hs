add3 x = 
    let y = 3
    in x + y

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
        let smallersorted = quicksort [a | a <- xs, a <= x]
            biggersorted = quicksort [a | a <- xs, a > x]
        in  smallersorted ++ [x] ++ biggersorted

main = do
    print (add3 4) -- 7
    print ((let a = 9 in a + 1) + 2) -- 12
    print [let square x = x * x in (square 5, square 3, square 2)] -- [(25, 9, 4)]
    print (quicksort [5, 3, 2, 4, 1]) -- [1, 2, 3, 4, 5]