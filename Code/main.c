static int VALUE = 0xFEEDBEEF;
static int* ADDRESS = (int*)0x10000100;
int main()
{
    int* p = ADDRESS;
	
    *p = VALUE;
	
    int b = *p;
	
    return b;
}