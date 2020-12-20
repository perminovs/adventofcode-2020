enum class State (private val value: String) {
    FLOOR("."),
    EMPTY("L"),
    OCCUPIED("#");

    companion object {
        private val VALUES = values();
        fun fromRaw(s: Char) = VALUES.first { it.value == s.toString() }
    }

    override fun toString(): String = this.value
}

class Field(rawCells: String) {

    private var cells: MutableList<MutableList<State>> = mutableListOf()

    init {
        for (rawRow in rawCells.split("\n")) {
            val row: MutableList<State> = mutableListOf()
            for (symbol in rawRow.toMutableList()) {
                row.add(State.fromRaw(symbol))
            }
            this.cells.add(row)
        }
    }

    override fun equals(other: Any?): Boolean = (other is Field) && this.cells == other.cells

    override fun hashCode(): Int = cells.hashCode()

    private fun isCorrectIdx(x: Int, y: Int): Boolean = (y >= 0 && y < this.cells.size && x >= 0 && x < this.cells[y].size )

    fun getNeighboursCount(x: Int, y: Int): Int {
        var count = 0
        for (dx in listOf(-1, 0, 1)) {
            for (dy in listOf(-1, 0, 1)) {
                if (dx == 0 && dy == 0) continue
                val nx = x + dx
                val ny = y + dy
                if (!this.isCorrectIdx(nx, ny)) continue
                if (this.cells[ny][nx] == State.OCCUPIED) count += 1
            }
        }
        return count
    }

    fun getVisibleCount(x: Int, y: Int): Int {
        val decr: (Int) -> Int = { it - 1 }
        val incr: (Int) -> Int = { it + 1 }
        val const: (Int) -> Int = { it }

        var count = 0
        var cx: Int
        var cy: Int

        for (dxFunc in listOf(decr, const, incr)) {
            for (dyFunc in listOf(decr, const, incr)) {
                if (dxFunc == const && dyFunc == const) continue
                cx = dxFunc(x)
                cy = dyFunc(y)

                while (this.isCorrectIdx(cx, cy)) {

                    when (this.cells[cy][cx]) {
                        State.OCCUPIED -> { count += 1; break }
                        State.EMPTY -> break
                        else -> {}
                    }

                    cx = dxFunc(cx)
                    cy = dyFunc(cy)
                }
            }
        }

        return count
    }

    fun makeStep(occupiedToEmptyThreshold: Int, neighboursCounter: (Int, Int) -> Int): Boolean {
        val newState: MutableList<MutableList<State>> = mutableListOf()
        var hasChanged = false
        for (y in 0 until this.cells.size) {
            val newRow: MutableList<State> = mutableListOf()
            for (x in 0 until this.cells[y].size) {
                val s = this.cells[y][x]

                if (s == State.EMPTY && neighboursCounter(x, y) == 0) {
                    newRow.add(State.OCCUPIED)
                    hasChanged = true
                } else if (s == State.OCCUPIED && neighboursCounter(x, y) >= occupiedToEmptyThreshold) {
                    newRow.add(State.EMPTY)
                    hasChanged = true
                } else {
                    newRow.add(s)
                }
            }
            newState.add(newRow)
        }
        this.cells = newState
        return hasChanged
    }

    fun runUntilStablePart1(occupiedToEmptyThreshold: Int): Int {
        val getNeighbours = { x: Int, y: Int -> this.getNeighboursCount(x, y) }
        while (this.makeStep(occupiedToEmptyThreshold, getNeighbours)) {}

        var occupied = 0
        for (row in this.cells)
            for (cell in row)
                if (cell == State.OCCUPIED) occupied += 1
        return occupied
    }

    fun runUntilStablePart2(occupiedToEmptyThreshold: Int): Int {
        val getNeighbours = { x: Int, y: Int -> this.getVisibleCount(x, y) }
        while (this.makeStep(occupiedToEmptyThreshold, getNeighbours)) {}

        var occupied = 0
        for (row in this.cells)
            for (cell in row)
                if (cell == State.OCCUPIED) occupied += 1
        return occupied
    }

    override fun toString(): String {
        var res = ""
        for (cell in this.cells) res += cell.joinToString(" ") + "\n"
        return res
    }
}
