-- The order of the function definition does not matter.
doubleUs x y = doubleMe x + doubleMe y
doubleMe x = 2 * x

-- If else statements
-- if statement1
-- then statement2
-- else statement3

doubleSmall x = if x < 10
                    then x * 2
                    else x

-- Can be written in single line.

doubleBig x = if x >= 10 then x * 2 else x

-- let keyword: Used as an alternative of writing in a script and then loading it. you can't use it in a script.

-- Lists: Can be defined from a script or using the let command.
evenNumbers = [2, 4, 8]

-- Strings: Lists of characters, "Hi" == ['H', 'i'] (True) 
-- ++(concat) for concatation :(cons) for prepending in the start of the list.
hello = "Hello World"

-- Getting an element from a list !!(index)
fifth = hello !! 4

-- Lists can be of different lengths, but all the lists must have the same data type.
oddEven = [[1, 3, 5], [2, 4, 6]]
{-
Operations on lists

head  First element of the list.
tail  Remaining list after removing the first element of the list.
last  Last element of the list.
init  All except the last element of the list.
length  Length of the list.
take  Extracts the (at least)given number of items from the start.
drop  Drops the given number of items from the start.
elem  Works as "in" written as num `elem` list in general

Ranges
[1..20] All natural numbers between 1 and 20 (inclusive)
Skipping elements: [1, 3..10] Gives odd numbers.
In general:
              [a, a + d...x] Will give all the numbers in A.P less than x.
Reverse AP can also be done in the same way.

-}

{-
 Generating infinite lists in Haskell:
    cycle: Cycles the given list.
    repeat: Its like cycle but with only 1 element.
 List comprehensions:
    in math, the set comprehension is:
    {variable | variable \in input set, predicate for the variable}
    Example:
        {x | x \in N, x < 10}
-} 

evenNumbersComprehension = [x*2 | x <- [1..10]] -- Any number of predicates are allowed.

-- Applying condition on the list:

evenShortened = [x | x <- evenNumbersComprehension, x <= 10]

-- Using if else along with list comprehensions.

oddEvenName list = [if x `mod` 2 == 1 then "Odd" else "Even"| x <- list]


-- Upper case check using List Comprehensions.
upperCase string = [s | s <- string, s `elem` ['A'..'Z']]


-- Nested list comprehensions. Best avoided
lists = [[1, 3..10], [2, 4..10]]
mult5 lists = [ [x | x <- xs, x `mod` 5 == 0] | xs <- lists]


{- 
    Tuples:
        The type of the tuple depends on the size, and the size is fixed.
        Unlike lists, tuples are heterogenous and can have different types of elements together.
  
    Tuple methods:
        fst: Returns the first component of the list (snd returns the second element). These 2 methods only work on pairs.
        zip: Combines the corresponding elements of a list, and cuts off the rest.      
-}

