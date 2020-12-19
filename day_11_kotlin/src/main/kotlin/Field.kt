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

    fun getNeighboursCount(x: Int, y: Int): Int {
        var count = 0
        for (dx in listOf(-1, 0, 1)) {
            for (dy in listOf(-1, 0, 1)) {
                if (dx == 0 && dy == 0) continue
                val nx = x + dx
                val ny = y + dy
                if (nx < 0 || nx >= this.cells[y].size || ny < 0 || ny >= this.cells.size ) continue
                if (this.cells[ny][nx] == State.OCCUPIED) count += 1
            }
        }
        return count
    }

    fun makeStep(): Boolean {
        val newState: MutableList<MutableList<State>> = mutableListOf()
        var hasChanged = false
        for (y in 0 until this.cells.size) {
            val newRow: MutableList<State> = mutableListOf()
            for (x in 0 until this.cells[y].size) {
                val s = this.cells[y][x]

                if (s == State.EMPTY && getNeighboursCount(x, y) == 0) {
                    newRow.add(State.OCCUPIED)
                    hasChanged = true
                } else if (s == State.OCCUPIED && getNeighboursCount(x, y) >= 4) {
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

    fun runUntilStable(): Int {
        while (this.makeStep()) {}

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
