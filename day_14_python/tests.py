import pytest

from day_14_python.solution import (
    apply_mask, solution, parse_mask, parse_insert, apply_mask2, int_to_bin, resolve_floating, solution2,
)

TEST_INPUT = """
mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X
mem[8] = 11
mem[7] = 101
mem[8] = 0
"""

TEST_INPUT2 = """
mask = 000000000000000000000000000000X1001X
mem[42] = 100
mask = 00000000000000000000000000000000X0XX
mem[26] = 1
"""


@pytest.mark.parametrize(
    ('mask', 'number', 'expected'),
    [
        (
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X',
            11,
            73,
        ),
        (
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X',
            101,
            101,
        ),
        (
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X',
            0,
            64,
        ),
    ],
)
def test_apply_mask(mask, number, expected):
    assert apply_mask(mask, number) == expected


def test_parse_mask():
    assert parse_mask('mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X') == 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X'


@pytest.mark.parametrize(
    ('row', 'expected'),
    [
        ('mem[74] = 101', (74, 101)),
        ('mem[7] = 101', (7, 101)),
        ('mem[7] = 0', (7, 0)),
    ],
)
def test_parse_insert(row, expected):
    assert parse_insert(row) == expected


def test_solution():
    assert solution(TEST_INPUT) == 165


@pytest.mark.parametrize(
    ('mask', 'number', 'expected'),
    [
        (
            '000000000000000000000000000000X1001X',
            int_to_bin(42),
            '000000000000000000000000000000X1101X',
        ),
        (
            '00000000000000000000000000000000X0XX',
            int_to_bin(26),
            '00000000000000000000000000000001X0XX',
        ),
    ],
)
def test_apply_mask2(mask, number, expected):
    assert apply_mask2(mask, number) == expected


def test_resolve_floating():
    assert list(resolve_floating('000000000000000000000000000000X1101X')) == [26, 27, 58, 59]


def test_solution2():
    assert solution2(TEST_INPUT2) == 208
