module Solution where

import qualified Data.Map as M
import Data.List ( sort )
import Data.List.Split ( splitOn )
import ProblemData ( testData1, testData2, myData )


solution puzzle = j1 * j3
    where
        jumps = solution' (parsePuzzle puzzle) 0 0 M.empty
        j1 = (M.!) jumps 1
        j3 = (M.!) jumps 3

solution' levels prev idx passed
    | idx >= length levels  = M.insertWith (+) 3 1 passed
    | otherwise             = solution' levels cur (idx + 1) passed'
    where
        cur = levels !! idx
        diff = cur - prev
        passed' = M.insertWith (+) diff 1 passed

solution2 puzzle = (M.!) allPoints 0
    where 
        levels = parsePuzzle puzzle
        levels' = 0 : levels
        lastIdx = length levels' - 1
        points = M.fromList [(lastIdx, 1)]
        allPoints = solution2' levels' (lastIdx - 1) points

solution2' levels idx points
    | idx < 0    = points
    | otherwise  = solution2' levels (idx - 1) points'
    where
        cur = levels !! idx
        nextAdapters = [(safeGetByInd levels (idx + i), idx + i) | i <- [1,2,3]]
        possibleAdapterIndexes = [i | (v, i) <- nextAdapters, v > 0, v - cur < 4]

        possibleVariants = sum [(M.!) points i | i <- possibleAdapterIndexes]
        points' = M.insertWith (+) idx possibleVariants points


safeGetByKey map' k = if M.member k map' then (M.!) map' k else 0

safeGetByInd values i = if i < length values then values !! i else -1

parsePuzzle puzzle = sort (map toInt (splitOn "\n" puzzle))
    where toInt x = read x :: Int
