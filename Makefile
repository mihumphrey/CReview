#!/bin/Basics/bash 
HELLOWORLDSRCFILES := $(wildcard src/Basics/helloWorld/*.c)
HELLOWORLDHFILES := $(wildcard src/Basics/helloWorld/*.h)

USERINPUTSRCFILES := $(wildcard src/Basics/userInput/*.c)
USERINPUTHFILES := $(wildcard src/Basics/userInput/*.h)

WHILELOOPSRCFILES := $(wildcard src/Loops/whileLoop/*.c)
WHILELOOPHFILES := $(wildcard src/Loops/whileLoop/*.h)

ASCIISRCFILES := $(wildcard src/Basics/ascii/*.c)
ASCIIHFILES := $(wildcard src/Basics/ascii/*.h)

IFSRCFILES := $(wildcard src/Basics/if-else/*.c)
IFHFILES := $(wildcard src/Basics/if-else/*.h)

VOWELSRCFILES := $(wildcard src/Basics/vowel/*.c)
VOWELHFILES := $(wildcard src/Basics/vowel/*.h)


SUMSRCFILES := $(wildcard src/Loops/summation/*.c)
SUMHFILES := $(wildcard src/Loops/summation/*.h)

FIBONACCISRCFILES := $(wildcard src/Loops/fibonacci/*.c)
FIBONACCIHFILES := $(wildcard src/Loops/fibonacci/*.h)

CHARACTERSRCFILES := $(wildcard src/Stack/character/*.c)
CHARACTERHFILES := $(wildcard src/Stack/character/*.h)

INTEGERSRCFILES := $(wildcard src/Stack/integer/*.c)
INTEGERHFILES := $(wildcard src/Stack/integer/*.h)

ZIPSRCFILES := $(wildcard src/Stack/zipper/*.c)
ZIPHFILES := $(wildcard src/Stack/zipper/*.h)

all: $(HELLOWORLDSRCFILES) $(HELLOWORLDHFILES) $(USERINPUTSRCFILES) $(USERINPUTHFILES) $(WHILELOOPSRCFILES) $(WHILELOOPHFILES) $(ASCIISRCFILES) $(ASCIIHFILES) $(IFSRCFILES) $(IFHFILES) $(VOWELSRCFILES) $(VOWELHFILES) $(SUMSRCFILES) $(SUMHFILES) $(FIBONACCISRCFILES) $(FIBONACCIHFILES) $(STACKSRCFILES) $(STACKHFILES) $(INTEGERSRCFILES) $(INTEGERHFILES) $(ZIPSRCFILES) $(ZIPHFILES)
	gcc -Wall -g -o bin/Basics/helloWorld $(HELLOWORLDSRCFILES) -lm
	gcc -Wall -g -o bin/Basics/userInput $(USERINPUTSRCFILES) -lm
	gcc -Wall -g -o bin/Basics/ascii $(ASCIISRCFILES) -lm
	gcc -Wall -g -o bin/Basics/if-else $(IFSRCFILES) -lm
	gcc -Wall -g -o bin/Basics/vowel $(VOWELSRCFILES) -lm
	gcc -Wall -g -o bin/Loops/summation $(SUMSRCFILES) -lm
	gcc -Wall -g -o bin/Loops/whileLoop $(WHILELOOPSRCFILES) -lm
	gcc -Wall -g -o bin/Loops/fibonacci $(FIBONACCISRCFILES) -lm
	gcc -Wall -g -o bin/Stack/character $(CHARACTERSRCFILES) -lm
	gcc -Wall -g -o bin/Stack/integer $(INTEGERSRCFILES) -lm
	gcc -Wall -g -o bin/Stack/zipper $(ZIPSRCFILES) -lm

basics: $(HELLOWORLDSRCFILES) $(HELLOWORLDHFILES) $(USERINPUTSRCFILES) $(USERINPUTHFILES) $(WHILELOOPSRCFILES) $(WHILELOOPHFILES) $(ASCIISRCFILES) $(ASCIIHFILES) $(IFSRCFILES) $(IFHFILES) $(VOWELSRCFILES) $(VOWELHFILES)
	gcc -Wall -g -o bin/Basics/helloWorld $(HELLOWORLDSRCFILES) -lm
	gcc -Wall -g -o bin/Basics/userInput $(USERINPUTSRCFILES) -lm
	gcc -Wall -g -o bin/Basics/ascii $(ASCIISRCFILES) -lm
	gcc -Wall -g -o bin/Basics/if-else $(IFSRCFILES) -lm
	gcc -Wall -g -o bin/Basics/vowel $(VOWELSRCFILES) -lm

loops: $(SUMSRCFILES) $(SUMHFILES) $(WHILELOOPSRCFILES) $(WHILELOOPHFILES) $(FIBONACCISRCFILES) $(FIBONACCIHFILES)
	gcc -Wall -g -o bin/Loops/summation $(SUMSRCFILES) -lm
	gcc -Wall -g -o bin/Loops/whileLoop $(WHILELOOPSRCFILES) -lm
	gcc -Wall -g -o bin/Loops/fibonacci $(FIBONACCISRCFILES) -lm

stack: $(CHARACTERSRCFILES) $(CHARACTERHFILES) $(INTEGERSRCFILES) $(INTEGERHFILES) $(ZIPSRCFILES) $(ZIPHFILES)
	gcc -Wall -g -o bin/Stack/character $(CHARACTERSRCFILES) -lm
	gcc -Wall -g -o bin/Stack/integer $(INTEGERSRCFILES) -lm
	gcc -Wall -g -o bin/Stack/zipper $(ZIPSRCFILES) -lm

helloWorld: $(HELLOWORLDSRCFILES) $(HELLOWORLDHFILES)
	gcc -Wall -g -o bin/Basics/helloWorld $(HELLOWORLDSRCFILES) -lm

userInput: $(USERINPUTSRCFILES) $(USERINPUTHFILES)
	gcc -Wall -g -o bin/Basics/userInput $(USERINPUTSRCFILES) -lm

whileLoop: $(WHILELOOPSRCFILES) $(WHILELOOPHFILES)
	gcc -Wall -g -o bin/Loops/whileLoop $(WHILELOOPSRCFILES) -lm

ascii: $(ASCIISRCFILES) $(ASCIIHFILES)
	gcc -Wall -g -o bin/Basics/ascii $(ASCIISRCFILES) -lm

if-else: $(IFSRCFILES) $(IFHFILES)
	gcc -Wall -g -o bin/Basics/if-else $(IFSRCFILES) -lm

vowel: $(VOWELSRCFILES) $(VOWELHFILES)
	gcc -Wall -g -o bin/Basics/vowel $(VOWELSRCFILES) -lm

summation: $(SUMSRCFILES) $(SUMHFILES)
	gcc -Wall -g -o bin/Loops/summation $(SUMSRCFILES) -lm

fibonacci: $(FIBONACCISRCFILES) $(FIBONACCIHFILES)
	gcc -Wall -g -o bin/Loops/fibonacci $(FIBONACCISRCFILES) -lm

character: $(CHARACTERSRCFILES) $(CHARACTERHFILES)
	gcc -Wall -g -o bin/Stack/character $(CHARACTERSRCFILES) -lm

integer: $(INTEGERSRCFILES) $(INTEGERHFILES)
	gcc -Wall -g -o bin/Stack/integer $(INTEGERSRCFILES) -lm

zipper: $(ZIPSRCFILES) $(ZIPHFILES)
	gcc -Wall -g -o bin/Stack/zipper $(ZIPSRCFILES) -lm

test:
	bash ./test.sh

clean:
	rm -rf bin/Basics/* *.zip

.PHONY: all helloWorld userInput asci if-else whileLoop vowel basics sum fibonacci loops character integer zipper stack test clean
