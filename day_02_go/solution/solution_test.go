package main

import "testing"

func TestParsing(t *testing.T) {
	pswd := fromRaw("1-3 a: abcde")
	expected := Password{
		firstNumber:  1,
		secondNumber: 3,
		letter:       "a",
		phrase:       "abcde",
	}
	if pswd != expected {
		t.Errorf("Expected \"%v\" from \"1-3 a: abcde\", got \"%v\"", expected, pswd)
	}
}

func TestValidation1Correct(t *testing.T) {
	pswd := fromRaw("1-3 a: abcde")
	if !pswd.isCorrect1() {
		t.Errorf("\"%v\" expected to be valid, but it's not", pswd)
	}
}

func TestValidation1Incorrect(t *testing.T) {
	pswd := fromRaw("1-3 b: cdefg")
	if pswd.isCorrect1() {
		t.Errorf("\"%v\" expected to be invalid, but it's correct", pswd)
	}
}

func TestValidation2Correct(t *testing.T) {
	pswd := fromRaw("1-3 a: abcde")
	if !pswd.isCorrect2() {
		t.Errorf("\"%v\" expected to be valid, but it's not", pswd)
	}
}

func TestValidation2Incorrect1(t *testing.T) {
	pswd := fromRaw("1-3 b: cdefg")
	if pswd.isCorrect2() {
		t.Errorf("\"%v\" expected to be invalid, but it's correct", pswd)
	}
}

func TestValidation2Incorrect2(t *testing.T) {
	pswd := fromRaw("2-9 c: ccccccccc")
	if pswd.isCorrect2() {
		t.Errorf("\"%v\" expected to be invalid, but it's correct", pswd)
	}
}
