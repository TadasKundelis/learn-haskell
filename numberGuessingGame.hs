checkGuess :: Eq a => a -> a -> IO ()
checkGuess x target
       | x == target = putStrLn "You guessed correctly"
       | otherwise = putStrLn "You guessed incorrectly" 

checkGuess2 :: Eq a => a -> a -> IO ()
checkGuess2 guess target =
    case guess of
        x | x == target -> do putStrLn "You guessed correctly"
        _      -> do putStrLn "You guessed incorrectly"


guessNumber :: Int -> IO ()
guessNumber target = do
  putStrLn "Guess a number between 1 and 100:"
  guess <- readLn :: IO Int
  checkGuess guess target

main :: IO ()
main = do
  guessNumber 1