#include <stdio.h>

int main(int argc, char **argv) {
        
    char first[6] = {'H', 'l', 'o', 'W', 'r', 'd'};
    char second[6] = {'e', 'l', ' ', 'o', 'l', '!'};

    if (*first && *second){} // delete this line -- removes errors only
    return 0;
}
