import operator
from collections import defaultdict
from functools import reduce
from typing import NamedTuple, List, Iterator, Set, Dict

from day_16_python.data import RULES, NEARBY_TICKETS, MY_TICKET


class Range(NamedTuple):
    minimum: int
    maximum: int


def parse_rule(raw: str) -> List[Range]:
    splited = raw[raw.rfind(':'):].split(' ')
    r1 = splited[1]
    r2 = splited[-1]
    return [Range(*map(int, r.split('-'))) for r in (r1, r2)]


def parse_rules(raw: str, as_pairs=False):
    rules = []
    for rule in raw.split('\n'):
        if as_pairs:
            rules.append(parse_rule(rule))
        else:
            rules.extend(parse_rule(rule))
    return rules


def _parse_ticket(ticket: str) -> List[int]:
    return list(map(int, ticket.split(',')))


def parse_tickets(raw: str) -> Iterator[List[int]]:
    for ticket in raw.split('\n'):
        yield _parse_ticket(ticket)


def _validate_number(num: int, rules: List[Range]) -> bool:
    return any(rule.minimum <= num <= rule.maximum for rule in rules)


def get_invalid_ticket_numbers(tickets: str, rules: List[Range]):
    for ticket in parse_tickets(tickets):
        for number in ticket:
            if not _validate_number(number, rules):
                yield number


def get_valid_tickets(tickets: str, rules: List[Range]) -> Iterator[List[int]]:
    for ticket in parse_tickets(tickets):
        if all(_validate_number(number, rules) for number in ticket):
            yield ticket


def match_tickets(ranges: List[List[Range]], tickets: Iterator[List[int]]):  # hope no one will see this
    """ Returns matches between ticket numbers and rules.

    { <ticket_number_index>: <rule_index> }
    """
    possible_matches: Dict[int, List[Set]] = defaultdict(list)
    for ticket in tickets:
        for idx, num in enumerate(ticket):
            possibles = set()
            for rule_idx, rules in enumerate(ranges):
                if _validate_number(num, rules):
                    possibles.add(rule_idx)
            possible_matches[idx].append(possibles)

    reduced_matches = {}
    for idx, matches in possible_matches.items():
        reduced_matches[idx] = reduce(lambda x, y: x.intersection(y), matches)

    real_matches = {}
    while True:
        rule_idx = None
        for idx, possibles in reduced_matches.items():
            if len(possibles) == 1:
                rule_idx = list(possibles)[0]
                real_matches[idx] = rule_idx
                break
        if rule_idx is None:
            break

        for idx, possibles in reduced_matches.items():
            if rule_idx in possibles:
                reduced_matches[idx] = possibles - {rule_idx}

    return real_matches


def solution(raw_rules, raw_tickets):
    rules = parse_rules(raw_rules)
    return sum(list(get_invalid_ticket_numbers(raw_tickets, rules)))


def solution2(raw_rules, raw_tickets, target_ticket):
    rules = parse_rules(raw_rules, as_pairs=False)
    rules_pairs = parse_rules(raw_rules, as_pairs=True)

    matches = {v: k for k, v in match_tickets(rules_pairs, get_valid_tickets(raw_tickets, rules)).items()}

    ticket = _parse_ticket(target_ticket)
    target_positions = [matches[i] for i in range(6)]

    return reduce(operator.mul, (ticket[idx] for idx in target_positions))


if __name__ == '__main__':
    print(solution(RULES, NEARBY_TICKETS))
    print(solution2(RULES, NEARBY_TICKETS, MY_TICKET))
