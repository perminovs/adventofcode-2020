fun main() {
    val partOneThreshold = 4

    val field1 = Field(myData)
    val occupiedTotal1 = field1.runUntilStablePart1(partOneThreshold)
    println(occupiedTotal1)

    val partTwoThreshold = 5
    val field2 = Field(myData)
    val occupiedTotal2 = field2.runUntilStablePart2(partTwoThreshold)
    println(occupiedTotal2)
}
