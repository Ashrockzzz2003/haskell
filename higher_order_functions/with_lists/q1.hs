{-

Write a haskell higher order function “map_list” which generates a list of Int values starting from a, with an increment of next until it reaches b. The first argument is a function fn that takes an Int argument and returns a value of some type a. The second and third argument a and b are the lower limit and upper limit of the integer range to generate the list. The fourth argument next is the increment value to use when generating the list.
example usage of the map_list function:
map_list square 1 10 2
Output: [1, 9, 25, 49, 81]

-}

map_list :: (Int -> a) -> Int -> Int -> Int -> [a]
map_list fn a b next = map fn [a, a + next .. b]
