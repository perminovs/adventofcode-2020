import Solution (solution, solution2)

import Data.List.Split ( splitOn )

main = do
    putStrLn "Input your puzzle without brackets e.g. \"0,3,6\""
    rawPuzzle <- getLine
    let puzzle = [read x :: Int | x <- splitOn "," rawPuzzle]
    print (solution puzzle)
    print (solution2 puzzle)
