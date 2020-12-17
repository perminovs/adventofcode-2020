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

    private val cells: MutableList<MutableList<State>> = mutableListOf()

    init {
        for (rawRow in rawCells.split("\n")) {
            val row: MutableList<State> = mutableListOf()
            for (symbol in rawRow.toMutableList()) {
                row.add(State.fromRaw(symbol))
            }
            this.cells.add(row)
        }
    }

    override fun toString(): String {
        var res = ""
        for (cell in this.cells) res += cell.joinToString(" ") + "\n"
        return res
    }
}
