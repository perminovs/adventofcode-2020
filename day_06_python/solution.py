from functools import reduce

from data import TEST_DATA, MY_DATA


def solution(puzzle):
    print(sum(len(set(group.replace('\n', ''))) for group in puzzle.split('\n\n')))


def solution2(puzzle):
    acc = 0
    groups = puzzle.split('\n\n')
    for group in groups:
        answers_by_persons = [set(answers) for answers in group.split('\n')]
        common_answers = reduce(lambda x, y: x.intersection(y), answers_by_persons)
        acc += len(common_answers)
    print(acc)


if __name__ == '__main__':
    solution(TEST_DATA)
    solution(MY_DATA)
    print()
    solution2(TEST_DATA)
    solution2(MY_DATA)
