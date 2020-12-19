fun main() {
    val field = Field(myData)
    val occupiedTotal = field.runUntilStable()
    println(occupiedTotal)
}
