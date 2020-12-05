import Data.List

testData1 = [1721, 979, 366, 299, 675, 1456]
testData2 = [2, 1721, 979, 366, 299, 675, 1456, 10, 10000]

-- |Returns product of two numbers from `xs` whose sum is equal to 2020.
solution :: (Ord a, Num a) => [a] -> a
solution xs = solution' (sort xs) 2020

-- |Returns product of two numbers from `xs` whose sum is equal to `targetSum`.
-- Returns -1 if such pair does not exist.
solution' :: (Ord a, Num a) => [a] -> a -> a
solution' xs targetSum
 | null xs                  = -1
 | currentSum == targetSum  = head xs * last xs
 | currentSum >  targetSum  = solution' (take (length xs - 1) xs) targetSum
 | currentSum <  targetSum  = solution' (tail xs) targetSum
 where currentSum = head xs + last xs

-- |Returns product of three numbers from `xs` whose sum is equal to 2020.
solution2 :: (Ord p, Num p) => [p] -> p
solution2 xs = solution'' (sort xs) 0

solution'' :: (Ord p, Num p) => [p] -> Int -> p
solution'' xs idx
 | idx > length xs                                    = -1
 | let result = findGoodProduct xs idx, result /= -1  = result
 | otherwise                                          = solution'' xs (idx + 1)

{-|
    Returns product of three numbers: one is `xs[idx]` and two other from `xs` if they sum is equal to 2020.
    Returns -1 otherwise.

    *Main> findGoodProduct [299,366,675,979,1456,1721] 2
    241861950
    -- because xs[2] = 675, two other: 366, 979
    -- 675 + 366 + 979 = 2020

    *Main> findGoodProduct [299,366,675,979,1456,1721] 4
    -1
    -- because there is no such pair of numbers that can be added to xs[4] (1456) with result equals to 2020.
-}
findGoodProduct :: (Ord p, Num p) => [p] -> Int -> p
findGoodProduct xs idx
 | productOfTwo /= -1  = target * productOfTwo
 | otherwise           = -1
 where
     (target, xs') = split xs idx
     productOfTwo = solution' xs' (2020 - target)

{-|
    Returns element by index and the rest list.

    Main> split [1, 2, 3, 4, 5] 2
    Main> (3,[1,2,4,5])
-}
split :: [a] -> Int -> (a, [a])
split xs idx = 
    let (left, right) = splitAt idx xs
    in (head right, left ++ tail right)

myData = [1837, 1585, 1894, 1715, 1947, 1603, 1746, 1911, 1939, 1791, 1800, 1479, 1138, 1810, 1931, 1833, 1470, 1882, 1725, 1496, 1890, 1862, 1990, 1958, 1997, 1844, 1524, 541, 2001, 1591, 1687, 1941, 1940, 1561, 1813, 1654, 1500, 1575, 1826, 2006, 679, 1660, 1679, 1631, 2008, 575, 1583, 1883, 1904, 1436, 1650, 1532, 1907, 1803, 1693, 1700, 359, 1516, 1625, 1908, 1994, 1910, 1644, 1706, 1781, 1639, 1662, 1712, 1796, 1915, 1550, 1721, 1697, 1917, 1665, 1646, 1968, 1881, 1893, 1468, 1678, 1774, 285, 1754, 1856, 1677, 1823, 1802, 1681, 1587, 1767, 1711, 1900, 1983, 1787, 1996, 1726, 1982, 1971, 1553, 1542, 1863, 2002, 1831, 1891, 1555, 2000, 1847, 1783, 1873, 1761, 1742, 1534, 1993, 1898, 1973, 1974, 1597, 1540, 1581, 1864, 1452, 1637, 1649, 1886, 1965, 1460, 1664, 1701, 1647, 1812, 1937, 1902, 2004, 1991, 1718, 1887, 1606, 1748, 1737, 1608, 1641, 1710, 1724, 705, 1985, 1571, 1805, 131, 1788, 1707, 1513, 1615, 1897, 1476, 1927, 1745, 1926, 1839, 1807, 1955, 1692, 1645, 1699, 1471, 1604, 1830, 1622, 1972, 1866, 1814, 1816, 1855, 1820, 1034, 1673, 1704, 1969, 1580, 1980, 1739, 1896, 434, 497, 1851, 1933, 458, 1521, 1551, 1762, 2010, 1614, 1840, 1747, 1875, 1836, 1895, 1518, 1825, 1987]
