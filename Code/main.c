#include <stdlib.h>

static int VALUE = 0xFEEDBEEF;

int main()
{
    int* p = (int*)malloc(4);
	
	*p = VALUE;
	
	int b = *p;
	
	return b;
}