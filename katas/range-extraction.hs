import Data.List

solution :: [Integer] -> String
solution myList = intercalate "," (snd res ++ [printRange $ fst res])
    where res = foldl solve ([], []) myList

solve :: ([Integer], [String]) -> Integer -> ([Integer], [String])
solve (consecutive, results) curr = if null consecutive || (last consecutive) + 1 == curr 
                                   then (consecutive ++ [curr], results) 
                                   else ([curr], results ++ [printRange consecutive]) 

printRange :: [Integer] -> String
printRange lst = if length lst < 3 then printEveryNum lst else (show $ head lst) ++ "-" ++ (show $ last lst)

printEveryNum :: [Integer] -> String
printEveryNum lst = intercalate "," $ map show lst

main = do
    -- print $ printEveryNum [1, 2, 3]
    -- print $ printRange [1, 2]
    print $ solution [1, 2, 3, 5, 6, 7, 9]
