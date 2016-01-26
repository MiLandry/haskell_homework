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

battingAbility :: Double -> Double -> String
battingAbility hits atBats
  | avg <= 0.200 = "you suck"
  | avg > 0.200 && avg <=0.250 = "you are average"
  | avg > 0.250 && avg <=0.280 = "you are good"
  | otherwise = "you are a superstar"
  where avg = hits/atBats


data BaseballPlayer = Pitcher
  | Catcher
  | Infielder
  | Outfielder
  deriving Show


barryBonds :: BaseballPlayer -> Bool
barryBonds Outfielder = True

barryInOF = print(barryBonds Outfielder)

data Customer = Customer String String Double
  deriving Show

tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Fake Street" 20.15

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

data Shape = Circle Float Float Float | Rectangle Float Float
  deriving Show

area :: Shape -> Float

area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y) = (abs $2 * x - x) * (abs $ 2 * y - y)

myCircle = Circle 1 1 1
