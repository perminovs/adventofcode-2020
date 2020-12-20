module Solution where

import qualified Data.Map as M
import Data.List.Split ( splitOn )
import ProblemData ( testData, myData )


parseCommands puzzle = [(head x, toInt (tail x)) | x <- splitOn "\n" puzzle]
    where toInt i = read i :: Int

solution puzzle = let
    position = solution' (parseCommands puzzle) 0 (0, 0) 'E'
    position' = (abs (fst position), abs (snd position))
    in uncurry (+) position'

solution' commands idx position direction
    | idx >= length commands  = position
    | otherwise               = solution' commands (idx + 1) position' direction'
    where
        command = commands !! idx
        (position', direction') = makeStep command position direction


makeStep (cmd, value) (x, y) direction
    | cmd == 'F'                = makeStep (direction, value) (x, y) direction
    | cmd == 'N'                = ((x, y - value), direction)
    | cmd == 'S'                = ((x, y + value), direction)
    | cmd == 'E'                = ((x + value, y), direction)
    | cmd == 'W'                = ((x - value, y), direction)
    | cmd == 'L' || cmd == 'R'  = ((x, y), rotate cmd value direction)

directionToLetter = M.fromList [(0, 'E'), (90, 'N'), (180, 'W'), (270, 'S')]
letterToDirection = M.fromList [('E', 0), ('N', 90), ('W', 180), ('S', 270)]

rotate 'R' value direction = rotate 'L' (-value) direction
rotate 'L' value direction = let
    degree = (M.!) letterToDirection direction
    newDegree = normalize(degree + value)
    direction' = (M.!) directionToLetter newDegree
    in direction'
        
normalize d
    | d < 0       = normalize (d + 360)
    | d >= 360    = normalize (d - 360)
    | otherwise   = d
