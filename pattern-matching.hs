factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- pattern matching with list comprehension
addTuples :: Num a => [(a, a)] -> [a]
addTuples lst = [a + b | (a, b) <- lst]

reverseLinkedList :: [a] -> [a]
reverseLinkedList [] = [] 
reverseLinkedList (x: xs) = reverseLinkedList xs ++ [x] 

-- sum list recursively with pattern mathing
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x: xs) = x + sum xs

hello :: String -> String 
hello (x:_) = "Hello" ++ [x]
hello _ = error "Empty string!"