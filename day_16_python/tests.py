import pytest

from day_16_python.solution import (
    Range, parse_rule, get_invalid_ticket_numbers, parse_rules, match_tickets, get_valid_tickets,
)


@pytest.mark.parametrize(
    ('raw', 'expected'),
    [
        ('class: 1-3 or 5-7', [Range(1, 3), Range(5, 7)]),
        ('seat: 13-40 or 45-50', [Range(13, 40), Range(45, 50)]),
        ('arrival platform: 46-428 or 449-949', [Range(46, 428), Range(449, 949)]),
    ],
)
def test_parse_rules(raw, expected):
    assert parse_rule(raw) == expected


def test_get_invalid_ticket_numbers():
    tickets = (
        "7,3,47\n"
        "40,4,50\n"
        "55,2,20\n"
        "38,6,12"
    )
    raw_rules = (
        "class: 1-3 or 5-7\n"
        "row: 6-11 or 33-44\n"
        "seat: 13-40 or 45-50"
    )
    rules = parse_rules(raw_rules)
    assert list(get_invalid_ticket_numbers(tickets, rules)) == [4, 55, 12]


def test_get_valid_tickets():
    tickets = (
        "7,3,47\n"
        "40,4,50\n"
        "55,2,20\n"
        "38,6,12"
    )
    raw_rules = (
        "class: 1-3 or 5-7\n"
        "row: 6-11 or 33-44\n"
        "seat: 13-40 or 45-50"
    )
    rules = parse_rules(raw_rules)
    assert list(get_valid_tickets(tickets, rules)) == [[7, 3, 47]]


@pytest.mark.parametrize(
    ('ranges', 'tickets', 'expected'),
    [
        (
            [
                 [Range(0, 1), Range(4, 19)],
                 [Range(0, 5), Range(8, 19)],
                 [Range(0, 13), Range(16, 19)],
            ],
            (
                [3, 9, 18],
                [15, 1, 5],
                [5, 14, 9],
            ),
            {0: 1, 1: 0, 2: 2},
        )
    ]
)
def test_match_tickets(ranges, tickets, expected):
    assert match_tickets(ranges, tickets) == expected
