static const int VALUE = 0xFEEDBEEF;
static const int ADDRESS = 0x10000100;
int main()
{
    int* p = (int*)ADDRESS;
	
    *p = VALUE;
	
    int b = *p;
	
    return b;
}