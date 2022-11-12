compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10) -- not providing left operand
main = do
    print (compareWithHundred 120) -- LT
    print (divideByTen 200) -- 20.0