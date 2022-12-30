-- https://www.codewars.com/kata/5727bb0fe81185ae62000ae3/train/haskell   
module Codewars.BackspacesInString where

cleanString :: String -> String
cleanString = reverse . foldl t ""
  where t cs '#' = drop 1 cs
        t cs  c  = c : cs