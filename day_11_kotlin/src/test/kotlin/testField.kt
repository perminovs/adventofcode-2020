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

    private val terminalState = """
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
    @MethodSource("neighbours")
    fun countNeighbourTest(x: Int, y: Int, expected: Int) {
        val simple = """
        #.#L
        #LLL
        L.#.""".trimIndent()

        Assertions.assertEquals(Field(simple).getNeighboursCount(x, y), expected)
    }

    companion object {
        @JvmStatic
        fun neighbours() = listOf(
            Arguments.of(0, 0, 1),
            Arguments.of(1, 1, 4),
            Arguments.of(1, 2, 2),
            Arguments.of(3, 2, 1),
        )
    }

    @Test
    fun oneStepWhenChangedTest() {
        val field = Field(initialState)
        val hasChanged = field.makeStep()

        Assertions.assertTrue(hasChanged)
        Assertions.assertEquals(field, Field(oneStepState))
    }

    @Test
    fun oneStepWhenNotChangedTest() {
        val field = Field(terminalState)
        val hasChanged = field.makeStep()

        Assertions.assertFalse(hasChanged)
        Assertions.assertEquals(field, Field(terminalState))
    }

    @Test
    fun runAllTest() {
        val field = Field(initialState)
        val occupiedTotal = field.runUntilStable()

        Assertions.assertEquals(occupiedTotal, 37)
        Assertions.assertEquals(field, Field(terminalState))
    }
}
