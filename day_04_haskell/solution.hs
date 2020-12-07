module Solution where

import Data.Set ( fromList )
import Data.List.Split ( splitOn )
import ProblemData ( testDataRaw, myDataRaw )

toList' = splitOn "\nn"

toList x = map replaceNewLines (toList' x)

replaceNewLines = map (\c -> if c=='\n' then ' '; else c)

testData = toList testDataRaw
myData = toList myDataRaw

ideal = fromList ["byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid"]
ideal' = fromList ["byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid", "cid"]

getKeys xs = fromList [head (splitOn ":" c) | c <- splitOn " " xs]

solution xs = length [row | row <- xs, check row]

check row = k == ideal || k == ideal'
    where k = getKeys row
