doubleMe x = x + x

-- if else
doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

x = doubleMe 3
y = doubleSmallNumber 4

twoLists = [1, 2, 3] ++ [4, 5, 6]

-- prepend
prependedItem = 1:[2, 3, 4]

-- get an element out of the list (String is a list of chars)
secondChar = "Tadas" !! 2 -- 'd'

-- helper function to check if list contains item
contains x lst = x `elem` lst

-- list comprehensions
doubleList lst = [x * 2 | x <- lst, x `mod` 2 == 1]

boomBangs lst = [if x < 10 then "Boom!" else "Bang!" | x <- lst, odd x]

length' lst = sum [1 | _ <- lst]

length2 :: (Num b) => [a] -> b
length2 [] = 0
length2 (_:xs) = 1 + length2 xs 

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe x = "I don't know this number"

main = do
  print [1..20]
  print [1,3..20] -- 1, 3, 5, 7 ...
  print ['a'..'v']
  print (length' [1, 2, 3])
  print (sayMe 1) -- "One!"
  print (sayMe 4) --  "I don't know this number"
  print (length2 [1, 2, 3, 4, 5])
  print (sum [1, 4, 6])
