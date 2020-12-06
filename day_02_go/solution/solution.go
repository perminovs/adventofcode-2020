package main

import (
	"strconv"
	"strings"
)

type Password struct {
	firstNumber, secondNumber int
	letter, phrase            string
}

func (password Password) isCorrect1() bool {
	count := strings.Count(password.phrase, password.letter)
	return count >= password.firstNumber && count <= password.secondNumber
}

func (password Password) isCorrect2() bool {
	firstIndex := password.firstNumber - 1
	secondIndex := password.secondNumber - 1
	if len(password.phrase) < secondIndex || len(password.phrase) < firstIndex {
		return false
	}

	letter := password.letter[0]
	a := password.phrase[firstIndex] == letter
	b := password.phrase[secondIndex] == letter
	return !(a && b) && (a || b)
}

func fromRaw(raw string) Password {
	splited := strings.Split(raw, ": ")
	pswdPolicy := strings.Split(splited[0], " ")
	repetitions := strings.Split(pswdPolicy[0], "-")
	minRepetition, _ := strconv.Atoi(repetitions[0])
	maxRepetition, _ := strconv.Atoi(repetitions[1])

	return Password{
		firstNumber:  minRepetition,
		secondNumber: maxRepetition,
		letter:       pswdPolicy[1],
		phrase:       splited[1],
	}
}

func main() {
	rows := strings.Split(myData, "\n")
	acc1, acc2 := 0, 0
	for _, v := range rows {
		pswd := fromRaw(v)
		if pswd.isCorrect1() {
			acc1 += 1
		}
		if pswd.isCorrect2() {
			acc2 += 1
		}
	}
	println(acc1)
	println(acc2)
}
