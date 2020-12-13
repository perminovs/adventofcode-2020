from data import TEST_DATA, MY_DATA


def parse_data(puzzle):
    timestamp, raw_schedule = puzzle
    return timestamp, [int(x) for x in raw_schedule.split(',') if x != 'x']


def solution(puzzle):
    timestamp, buses = parse_data(puzzle)
    waiting_time, bus_idx = min(
        [
            (
                (timestamp // b * b + b - timestamp),
                idx
            )
            for idx, b in enumerate(buses)
        ]
    )
    return waiting_time * buses[bus_idx]


if __name__ == '__main__':
    print(solution(TEST_DATA))
    print(solution(MY_DATA))
