module Solution where

import ProblemData (testData, myData)

solution puzzle = solution' puzzle 3 1

solution2 puzzle = a * b * c * d * e
    where
        a = solution' puzzle 1 1
        b = solution' puzzle 3 1
        c = solution' puzzle 5 1
        d = solution' puzzle 7 1
        e = solution' puzzle 1 2

solution' puzzle dx dy = countTrees puzzle acc x y dx dy
    where
        acc = if head (head puzzle) == '#' then 1 else 0
        x = 0
        y = dy

countTrees puzzle acc x y dx dy
    | y >= length puzzle  = acc
    | otherwise           = countTrees puzzle acc' x' (y + dy) dx dy
    where
        row = puzzle !! y
        size = length row
        x'' = x + dx
        x' = if x'' < size then x'' else x'' - size
        acc' = if row !! x' == '#' then acc + 1 else acc
