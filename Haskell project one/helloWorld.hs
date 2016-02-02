import System.IO
hello = "Hello, World!"

getListItems :: [Int] -> String
--you should check to see if the list is empty and do something
getListItems [] = "Yourlist is empty"
getListItems (x:[]) = "Your list only has one element ; it contains:  " ++ show x
getListItems (x:y:[]) = "Your list contains two elements " ++ show x ++ "and " ++ show y
getListItems (x:xs) = "first item is " ++ show x ++ "and the rest of the list is " ++ show xs
