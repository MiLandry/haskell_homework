hello = "Hello, World!"


-- Compute the sum of the integers from 1 to n.
sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)


isOdd :: Int -> Bool
isOdd x = x `mod` 2 == 1

whatGrade :: Int -> String
whatGrade x
  |x >= 90 = "A"
  |x < 90 && x>=80 = "B"
  |x < 80 && x>=72 = "C"
  |x < 72 && x>=70 = "D"
  |otherwise = "F" 