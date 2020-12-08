module Solution where

import qualified Data.Map as M
import qualified Data.Set as S
import Data.List.Split ( splitOn )
import ProblemData ( testDataRaw, myDataRaw )


solution :: [Char] -> [Char] -> Int
solution puzzle startBag = solution' (parsePuzzle puzzle) [startBag] S.empty

solution' hashmap bags visited
    | null bags  = length visited - 1
    | otherwise  = solution' hashmap bags' visited'
        where
            visited' = S.union visited (S.fromList bags)
            upperBags = S.fromList (stepUp hashmap bags)
            bags' = S.toList (S.difference upperBags visited')


{-| Parses whole puzzle into hashmap: from wich bag you can reach external ones.

    dark olive bags contain 3 faded blue bags, 4 dotted black bags.
    ----------                ^^^^^^^^^^         -x-x-x-x-x-x         

    vibrant plum bags contain 5 faded blue bags, 6 muted yellow bags.
    ++++++++++++                ^^^^^^^^^^         =x=x=x=x=x=x

    =>

    "fadedblue"   -> [ "darkolive", "vibrantplum" ]
    "dottedblack" -> [ "darkolive" ]
    "mutedyellow" -> [ "vibrantplum" ]
-}
parsePuzzle :: [Char] -> M.Map [Char] [[Char]]
parsePuzzle puzzle = parsePuzzle' (splitOn "\n" puzzle) M.empty 0

parsePuzzle' puzzle hashmap idx
    | idx >= length puzzle  = hashmap
    | otherwise             = parsePuzzle' puzzle hashmap' (idx + 1)
        where
            (externalBag, internalBags) = parseRow (puzzle !! idx)
            hashmap' = addBag internalBags externalBag hashmap

{-| Add list of internal bags to external bags.

    addBag ["a", "b"] "c" M.empty
    =>
    fromList [("a",["c"]),("b",["c"])]

    addBag ["a", "b"] "c" (M.fromList [("b", ["d1", "d2"])])
    =>
    fromList [("a",["c"]),("b",["c","d1","d2"])]
-}
addBag :: Ord a1 => [a1] -> a2 -> M.Map a1 [a2] -> M.Map a1 [a2]
addBag keys value hashmap = addBag' keys value hashmap 0

addBag' keys value hashmap idx
    | idx >= length keys  = hashmap
    | otherwise           = addBag' keys value hashmap' (idx + 1)
        where
            key = keys !! idx
            hashmap' = M.insertWith (++) key [value] hashmap


{-| Parses one puzzle row into tuple of external bag and list of internal.

    light red bags contain 1 bright white bag, 2 muted yellow bags.
    ---------                ============        ============

    =>

    ("lightred",["brightwhite","mutedyellow"])
-}
parseRow :: [Char] -> ([Char], [[Char]])
parseRow row = (externalBag, innerBags)
    where
        bags = splitOn " contain " row
        clean string = head (splitOn " bag" string)

        externalBag = concat (splitOn " " (clean (head bags)))
        
        innerBags' = [clean x | x <- splitOn ", " (bags !! 1)]
        innerBags'' = [concat (tail y) | y <- [splitOn " " x | x <- innerBags']]
        innerBags = if innerBags'' == ["other"] then [] else innerBags''


{-| Returns list of values by list of keys.

    stepUp (M.fromList [("a", ["A"]), ("b", ["B1", "B2"]), ("c", ["C"])]) ["b", "c", "d"]
    =>
    ["C","B1","B2"]
-}
stepUp :: Ord a1 => M.Map a1 [a2] -> [a1] -> [a2]
stepUp hashmap keys = stepUp' hashmap keys [] 0

stepUp' hashmap keys lst idx
    | idx >= length keys  = lst
    | otherwise           = stepUp' hashmap keys lst' (idx + 1)
        where
            key = keys !! idx
            lst' =
                if M.member key hashmap
                then lst ++ (M.!) hashmap key
                else lst
