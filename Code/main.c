float func();
int main()
{
    float result = func();
	
    __asm__ volatile (
    "mv t3, %0"   // Moves the value from the compiler's chosen register into t3
    :
    : "r" ((int)(result)) // Passes 'my_number' as an input register
    : "t3"
);
	
    while(1){}
}

float func()
{
    float a = 2.4f;
    float pi = 3.1416f;
    float result = a + pi;

    return result;
}
