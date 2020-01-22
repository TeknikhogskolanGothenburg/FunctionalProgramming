fizzBuzzOne :: (Integral a, Show a) => a -> String
fizzBuzzOne i | i `mod` 3 == 0 && i `mod` 5 == 0 = "FizzBuzz"
fizzBuzzOne i | i `mod` 5 == 0 = "Buzz"
fizzBuzzOne i | i `mod` 3 == 0 = "Fizz"
fizzBuzzOne i = show i

fizzBuzz :: [Integer] -> [String]
fizzBuzz = map fizzBuzzOne 
--fizzBuzz is = map fizzBuzzOne is
--fizzBuzz [] = []
--fizzBuzz (i:is) = fizzBuzzOne i : fizzBuzz is

main :: IO()
main = putStr $ unlines $ fizzBuzz [1..100]