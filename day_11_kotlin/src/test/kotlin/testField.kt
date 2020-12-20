import org.junit.jupiter.api.Test
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.params.ParameterizedTest
import org.junit.jupiter.params.provider.Arguments
import org.junit.jupiter.params.provider.MethodSource


class FieldTest {
    private val initialState = """
        L.LL.LL.LL
        LLLLLLL.LL
        L.L.L..L..
        LLLL.LL.LL
        L.LL.LL.LL
        L.LLLLL.LL
        ..L.L.....
        LLLLLLLLLL
        L.LLLLLL.L
        L.LLLLL.LL""".trimIndent()

    private val oneStepState = """
        #.##.##.##
        #######.##
        #.#.#..#..
        ####.##.##
        #.##.##.##
        #.#####.##
        ..#.#.....
        ##########
        #.######.#
        #.#####.##""".trimIndent()

    private val terminalState1 = """
        #.#L.L#.##
        #LLL#LL.L#
        L.#.L..#..
        #L##.##.L#
        #.#L.LL.LL
        #.#L#L#.##
        ..L.L.....
        #L#L##L#L#
        #.LLLLLL.L
        #.#L#L#.##""".trimIndent()

    private val terminalState2 = """
        #.L#.L#.L#
        #LLLLLL.LL
        L.L.L..#..
        ##L#.#L.L#
        L.L#.LL.L#
        #.LLLL#.LL
        ..#.L.....
        LLL###LLL#
        #.LLLLL#.L
        #.L#LL#.L#""".trimIndent()

    private val partOneThreshold = 4
    private val partTwoThreshold = 5


    @Test
    fun toStringTest() {
        val expected = """
        L . L L . L L . L L
        L L L L L L L . L L
        L . L . L . . L . .
        L L L L . L L . L L
        L . L L . L L . L L
        L . L L L L L . L L
        . . L . L . . . . .
        L L L L L L L L L L
        L . L L L L L L . L
        L . L L L L L . L L""".trimIndent() + "\n"

        val field = Field(initialState)

        Assertions.assertEquals(field.toString(), expected)
    }

    @ParameterizedTest
    @MethodSource("neighboursTestData")
    fun countNeighbourTest(x: Int, y: Int, expected: Int) {
        val simple = """
        #.#L
        #LLL
        L.#.""".trimIndent()

        Assertions.assertEquals(Field(simple).getNeighboursCount(x, y), expected)
    }

    @ParameterizedTest
    @MethodSource("visibleTestData")
    fun countVisibleTest(rawField: String, x: Int, y: Int, expected: Int) {
        Assertions.assertEquals(Field(rawField).getVisibleCount(x, y), expected)
    }

    companion object {
        @JvmStatic
        fun neighboursTestData() = listOf(
            Arguments.of(0, 0, 1),
            Arguments.of(1, 1, 4),
            Arguments.of(1, 2, 2),
            Arguments.of(3, 2, 1),
        )

        @JvmStatic
        fun visibleTestData() = listOf(
            Arguments.of(
                """
                .......#.
                ...#.....
                .#.......
                .........
                ..#L....#
                ....#....
                .........
                #........
                ...#.....""".trimIndent(),
                3, 4, 8,
            ),
            Arguments.of(
                """
                .............
                .L.L.#.#.#.#.
                .............
                """.trimIndent(),
                1, 1, 0,
            ),
            Arguments.of(
                """
                .##.##.
                #.#.#.#
                ##...##
                ...L...
                ##...##
                #.#.#.#
                .##.##.""".trimIndent(),
                3, 3, 0,
            )
        )
    }

    @Test
    fun oneStepWhenChangedTest() {
        val field = Field(initialState)
        val getNeighbours = { x: Int, y: Int -> field.getNeighboursCount(x, y) }
        val hasChanged = field.makeStep(partOneThreshold, getNeighbours)

        Assertions.assertTrue(hasChanged)
        Assertions.assertEquals(field, Field(oneStepState))
    }

    @Test
    fun oneStepWhenNotChangedTest() {
        val field = Field(terminalState1)
        val getNeighbours = { x: Int, y: Int -> field.getNeighboursCount(x, y) }
        val hasChanged = field.makeStep(partOneThreshold, getNeighbours)

        Assertions.assertFalse(hasChanged)
        Assertions.assertEquals(field, Field(terminalState1))
    }

    @Test
    fun solution1Test() {
        val field = Field(initialState)
        val occupiedTotal = field.runUntilStablePart1(partOneThreshold)

        Assertions.assertEquals(occupiedTotal, 37)
        Assertions.assertEquals(field, Field(terminalState1))
    }

    @Test
    fun solution2Test() {
        val field = Field(initialState)
        val occupiedTotal = field.runUntilStablePart2(partTwoThreshold)

        Assertions.assertEquals(occupiedTotal, 26)
        Assertions.assertEquals(field, Field(terminalState2))
    }
}
