from queue import Queue
from typing import Tuple, Iterator

from day_14_python.data import MY_DATA


def int_to_bin(num: int) -> str:
    return bin(num)[2:]


def bin_to_int(num: str) -> int:
    return int(f'0b{num}', 2)


def apply_mask(mask: str, number: int) -> int:
    bin_num = bin(number)[2:].rjust(len(mask), '0')
    wide_mask = mask.rjust(len(bin_num), 'X')
    new_bin = ''.join(d if m == 'X' else m for d, m in zip(bin_num, wide_mask))
    return bin_to_int(new_bin)


def apply_mask2(mask: str, number: str) -> str:
    bin_num = number.rjust(len(mask), '0')
    wide_mask = mask.rjust(len(bin_num), '0')
    return ''.join(d if m == '0' else m for d, m in zip(bin_num, wide_mask))


def resolve_floating(number: str) -> Iterator[int]:
    q = Queue()
    q.put(number)
    while not q.empty():
        n: str = q.get()
        if 'X' not in n:
            yield bin_to_int(n)
            continue

        q.put(n.replace('X', '0', 1))
        q.put(n.replace('X', '1', 1))


def parse_mask(row: str) -> str:
    return row.replace('mask = ', '')


def parse_insert(row: str) -> Tuple[int, int]:
    # import re? never heard
    left = row.replace('mem[', '')
    bracket_idx = left.rfind(']')
    idx = int(left[:bracket_idx])
    num = int(left[bracket_idx + 1:].replace(' = ', ''))
    return idx, num


def solution(raw_input: str) -> int:
    memory = {}
    mask = None
    for row in (r for r in raw_input.split('\n') if r):
        if row.startswith('mask'):
            mask = parse_mask(row)
            continue
        idx, num = parse_insert(row)
        memory[idx] = apply_mask(mask, num)
    return sum(memory.values())


def solution2(raw_input: str) -> int:
    memory = {}
    mask = None
    for row in (r for r in raw_input.split('\n') if r):
        if row.startswith('mask'):
            mask = parse_mask(row)
            continue
        idx, num = parse_insert(row)
        floating_idx = apply_mask2(mask, int_to_bin(idx))
        for new_idx in resolve_floating(floating_idx):
            memory[new_idx] = num
    return sum(memory.values())


if __name__ == '__main__':
    print(solution(MY_DATA))
    print(solution2(MY_DATA))
