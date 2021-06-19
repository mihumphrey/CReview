#!/bin/bash 

TYPE_COUNTER=0
TYPE_TOTAL=0
COUNTER=0
TOTAL=0

RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'

for type in Basics Loops Stack; do
    TYPE_TOTAL=0
    TYPE_COUNTER=0
    echo -e " ***************** Testing $type Category ***************** "
    for test in $(ls src/$type); do #helloWorld userInput whileLoop ascii if-else vowel; do
        TOTAL=$((TOTAL + 1))
        TYPE_TOTAL=$((TYPE_TOTAL + 1))
        echo -ne "\tTesting $test...\t"
        make $test > /dev/null
        if [[ $? -ne 0 ]] 
        then
            echo -e "${RED}\tCOULD  NOT COMPILE${NC}"
        fi
        DIFF=$(diff -w <(cat input/$type/$test.txt | ./bin/$type/$test | tr -d '\n' | tee output/$type/$test.txt) <(cat trace/$type/$test.txt | tr -d '\n'))
        if [[ "$DIFF" = "" ]] && [[ $? -eq 0  ]]
        then
            echo -e "${GREEN}\tPASS${NC}"
            rm output/$type/$test.txt
            COUNTER=$((COUNTER + 1))
            TYPE_COUNTER=$((TYPE_COUNTER + 1))
        else
            echo -e "${RED}\tFAIL${NC}"
        fi
    done  

    if [[ $TYPE_COUNTER -eq $TYPE_TOTAL ]] 
    then
        echo -e "Category Score: ${GREEN}$TYPE_COUNTER/$TYPE_TOTAL${NC}"
    else
        echo -e "Category Score: ${RED}$TYPE_COUNTER/$TYPE_TOTAL${NC}"
    fi
done
if [[ $COUNTER -eq $TOTAL ]] 
then
    echo -e "Total Score: ${GREEN}$COUNTER/$TOTAL${NC}"
else
    echo -e "Total Score: ${RED}$COUNTER/$TOTAL${NC}"
fi
