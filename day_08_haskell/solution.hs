module Solution where

import qualified Data.Set as S
import Data.List.Split ( splitOn )
import ProblemData ( testData, myData )


solution puzzle = solution' (parsePuzzle puzzle)

solution' cmds = fstOfThird (runProgram cmds)
    where fstOfThird (a, _, _) = a

solution2 puzzle = solution2' cmds order 0 True
    where
        cmds = parsePuzzle puzzle
        (_, order, _) = runProgram cmds

solution2' cmds order idx isLooped
    | not isLooped         = solution' previousCmds
    | idx >= length order  = undefined
    | otherwise            = solution2' cmds order (idx + 1) isLooped'
    where
        switchedCmds = switchCommandAt (order !! idx) cmds
        isLooped' = hasLoop switchedCmds
        previousCmds = switchCommandAt (order !! (idx - 1)) cmds

parsePuzzle :: [Char] -> [([Char], Int)]
parsePuzzle puzzle = map parsePair (splitOn "\n" puzzle)

parsePair :: [Char] -> ([Char], Int)
parsePair raw = (cmd, num)
    where
        [cmd, rawNum] = splitOn " " raw
        num = if head rawNum /= '+' then read rawNum :: Int else read (tail rawNum) :: Int

{-| Run given list of commands and return tuple of:
    * value of accumulator at the end of program (or at point before infinite loop starts)
    * indexes list of executed "nop" and "jmp" commands in reversed order
    * index of last executed command
-}
runProgram :: [([Char], Int)] -> (Int, [Int], Int)
runProgram cmds = runProgram' cmds 0 0 S.empty []

runProgram' cmds idx acc visited order
    | idx >= length cmds    = (acc, order, idx)
    | S.member idx visited  = (acc, order, idx)
    | otherwise             = runProgram' cmds idx' acc' visited' order'
    where
        visited' = S.insert idx visited
        (cmd, num) = cmds !! idx
        order' = if cmd /= "acc" then idx : order else order
        acc' = if cmd == "acc" then acc + num else acc
        idx' = if cmd == "jmp" then idx + num else idx + 1

-- | Returns True if given command list has infinite loop and False otherwise.
hasLoop :: [([Char], Int)] -> Bool
hasLoop cmds = lastIdx /= length cmds
    where
        thd (_, _, a) = a
        lastIdx = thd (runProgram cmds)

{-|
    Switch command "nop" to "jmp" or vise versa by given index and command list.

    *Solution> switchCommandAt 2 [("nop",0),("acc",1),("jmp",4),("acc",3)]
    [("nop",0),("acc",1),("nop",4),("acc",3)]
-}
switchCommandAt :: (Num a, Enum a, Eq a) => a -> [([Char], b)] -> [([Char], b)]
switchCommandAt idx cmds = [if i == idx then flip cmd num else (cmd, num) | (i, (cmd, num)) <- zip [0..] cmds]
    where
        flip a b
            | a == "acc"  = (a, b)
            | a == "nop"  = ("jmp", b)
            | a == "jmp"  = ("nop", b)
