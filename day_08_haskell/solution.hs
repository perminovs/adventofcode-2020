module Solution where

import qualified Data.Set as S
import Data.List.Split ( splitOn )
import ProblemData ( testData, myData )


solution :: [Char] -> Int
solution puzzle = runProgram (parsePuzzle puzzle)

parsePuzzle :: [Char] -> [([Char], Int)]
parsePuzzle puzzle = map parsePair (splitOn "\n" puzzle)

parsePair raw = (cmd, num)
    where
        [cmd, rawNum] = splitOn " " raw
        num = if head rawNum /= '+' then read rawNum :: Int else read (tail rawNum) :: Int

runProgram :: [([Char], Int)] -> Int
runProgram cmds = runProgram' cmds 0 0 S.empty

runProgram' cmds idx acc visited 
    | S.member idx visited  = acc
    | otherwise             = runProgram' cmds idx' acc' visited'
    where
        visited' = S.insert idx visited
        (cmd, num) = cmds !! idx
        acc' = if cmd == "acc" then acc + num else acc
        idx' = if cmd == "jmp" then idx + num else idx + 1
