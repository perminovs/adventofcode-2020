module Solution where

import qualified Data.Map as M
import Data.List.Split ( splitOn )


solution puzzle = solution' puzzle 2020

solution2 puzzle = solution' puzzle 30000000

solution' puzzle = solution'' puzzle' lastSeen (length puzzle')
    where
        reversedPuzzle = reverse puzzle
        puzzle' = 0 : reversedPuzzle
        lastSeen = M.fromList (zip puzzle [1..])


solution'' puzzle lastSeen idx limit
    | idx == limit  = head puzzle
    | otherwise     = solution'' puzzle' lastSeen' idx' limit
    where
        lastElement = head puzzle
        lastIdx = if M.member lastElement lastSeen then (M.!) lastSeen lastElement else 0
        nextSpoken = if lastIdx == 0 then 0 else idx - lastIdx

        puzzle' = nextSpoken : puzzle
        lastSeen' = M.insert lastElement idx lastSeen
        idx' = idx + 1
