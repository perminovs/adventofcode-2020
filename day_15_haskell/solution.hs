module Solution where

import qualified Data.Map as M
import Data.List.Split ( splitOn )


solution puzzle = solution' puzzle' lastSeen (length puzzle')
    where
        puzzle' = puzzle ++ [0]
        lastSeen = M.fromList (zip puzzle [1..])


solution' puzzle lastSeen idx
    | idx == 2020  = last puzzle
    | otherwise    = solution' puzzle' lastSeen' idx'
    where
        lastElement = puzzle !! (idx - 1)
        lastIdx = if M.member lastElement lastSeen then (M.!) lastSeen lastElement else 0
        nextSpoken = if lastIdx == 0 then 0 else idx - lastIdx

        puzzle' = puzzle ++ [nextSpoken]
        lastSeen' = M.insert lastElement idx lastSeen
        idx' = idx + 1
