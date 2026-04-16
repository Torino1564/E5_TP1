#include <stdlib.h>

static char STATIC = 69;

int main()
{
    	char* p = (char*)malloc(10);
	
	*p = STATIC;
	
	char b = *p;
	
	return b;
}