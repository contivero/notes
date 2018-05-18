#include <stdio.h>

int fact(unsigned n) {
    unsigned ret = 1;

    while (n != 0) {
        ret *= n--;
    }
    return ret;
}
