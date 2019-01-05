#include "crashlib.h"

void crash_divbyzero()
{
	int crash = 2 / 0;
}

void crash_segfault()
{
	realloc(123, 321);
}

void crash_loop()
{
	while (1);
}

void crash_forkbomb()
{
	while (1) fork();
}

