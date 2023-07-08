-- without record
data Point = Point Float Float deriving (Show)

-- use record
data Person = Person {
  firstName :: String,
  lastName :: String
} deriving (Show)

-- create new person
person = Person {firstName = "Tadas", lastName = "Kundelis"}
printFirstName = print . firstName
printLastName = print . lastName

updateFirstName :: Person -> String -> Person
updateFirstName (Person firstName lastName) newFirstName = Person {firstName = newFirstName, lastName = lastName}

main = do
    print (Point 10 10)
    print person
    printFirstName person -- Tadas
    printLastName person -- Kundelis
    printFirstName (updateFirstName person "Kazys") -- Kazys