#include "crashlib.h"
#include <stdio.h>

int main() {

    printf("Crashing by segmentation fault...");
    fflush(stdout);

    crash_segfault();

    printf(" done\n");
}

