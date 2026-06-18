unsigned int fibo(unsigned int iterations);

int main()
{
    return fibo(10);
}

unsigned int fibo(unsigned int iterations)
{
    unsigned int n1;
    unsigned int n2;
    unsigned res = 0;
    
    n1 = 1;
    n2 = 1;
    
	
    for (unsigned int i = 0; i < iterations; i++)
    {
        res = n1 + n2;
        n2 = n1;
        n1 = res;
    }

    return res;
}