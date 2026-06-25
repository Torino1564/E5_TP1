int fibo(int n);

int main()
{
    int n = 23;
    int result = fibo(n);
    return result;
}

int fibo(int n)
{
    int a = 0;
    int b = 1;

    for (int i = 0; i < n; i++)
    {
        int tmp = a + b;
        a = b;
        b = tmp;
    }

    asm volatile (
        "mv t3, %0"
        :
        : "r"(a)
        : "t3"
    );

    while(1){}

    return a;
}