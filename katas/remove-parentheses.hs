-- https://www.codewars.com/kata/5f7c38eb54307c002a2b8cc8/train/haskell
module RemoveTheParentheses (removeParentheses) where

removeParentheses :: String -> String
removeParentheses s = solve s 0 []

solve :: String -> Int -> String -> String
solve ('(':xs) n acc = solve xs (n + 1) acc
solve (')':xs) n acc = solve xs (n - 1) acc
solve (x:xs) 0 acc = solve xs 0 (acc ++ [x])
solve (x:xs) n acc = solve xs n acc
solve [] _ acc = acc


-- better solution:
-- removeParentheses :: String -> String
-- removeParentheses ""       = ""
-- removeParentheses ('(':xs) = removeParentheses $ dropWhile (/=')') $ removeParentheses xs
-- removeParentheses (x:xs)   = x:removeParentheses xs