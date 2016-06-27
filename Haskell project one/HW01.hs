{-# OPTIONS_GHC -Wall #-}
module HW01 where

--Homework: implementing lua algorithim (for validating credit cards)

-- Exercise 1 -----------------------------------------

-- Get the last digit from a number
lastDigit :: Integer -> Integer
lastDigit x = x `mod` 10 

-- Drop the last digit from a number
dropLastDigit :: Integer -> Integer
-- If there is only one digit, then we will return 0 --
dropLastDigit x
    | x < 10 = 0
    |otherwise =  ( x - lastDigit x ) `quot` 10


-- Exercise 2 ------------------------------------

{-|
takes a number, breaks it up into digits, and returns a list of those digits as ints.
-}
toDigits :: Integer -> [Integer]
toDigits x
 |x < 10 = [x]
 |otherwise = toDigits (dropLastDigit x) ++ [lastDigit x]


{-|
takes a number, breaks it up into digits, and returns a list of those digits as ints, but backwards.
-}
toRevDigits :: Integer -> [Integer]
toRevDigits x
 |x < 10 = [x]
 |otherwise = [lastDigit x] ++ toRevDigits (dropLastDigit x)
-- another way to implement this is to just to call toDigits and reverse the result, or ever find a way 
-- to pass toDigits as a variable



-- Exercise 3 -----------------------------------------

{-|
Takes a list and doubles every second number in a list starting on the left.
If its just legnth 1  or less then just return it
-}
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther (x:[]) = [x]
doubleEveryOther (x:y:[]) = x : 2 * y: []
doubleEveryOther (x:y:xs) =   x : 2 * y : doubleEveryOther(xs)
{--

-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits []= 0


-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn x = True

-- Exercise 6 -----------------------------------------

-- Towers of Hanoi for three pegs
type Peg = String
type Move = (Peg, Peg)

--hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
--hanoi = [] 
-}
