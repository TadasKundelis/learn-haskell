head' :: [a] -> a
head' [] = error "No head for empty list"
head' (x:_) = x

-- the same using case statements
headWithCase :: [a] -> a
headWithCase xs = case xs of [] -> error "No head for empty list"
                             (x:_) -> x  

-- where vs case
describeList :: [a] -> String
describeList xs = "The list is " ++ what xs
    where what [] = "empty"
          what [x] = "a singleton list"
          what xs = "a longer list"

describeList2 :: [a] -> String
describeList2 xs = "The list is " ++ case xs of [] -> "empty"
                                                [x] -> "a singleton list"
                                                xs -> "a longer list"

main = do
    print "hello world"
    print (head' [1, 2, 3])
    print (headWithCase [3, 4, 5])
    print (describeList [], describeList [1], describeList [1, 2])
    print (describeList2 [], describeList2 [1], describeList2 [1, 2])