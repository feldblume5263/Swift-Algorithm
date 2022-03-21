#include <stdio.h>


void swap(int *a, int *b)
{
	int temp;

	printf("Before Change\n");
	printf("a: %d(address: %p)\n", *a, a);
	printf("b: %d(address: %p)\n", *b, b);
	temp = *a;
	*a = *b;
	*b = temp;
	printf("After Change\n");
	printf("a: %d(address: %p)\n", *a, a);
	printf("b: %d(address: %p)\n", *b, b);;
}

int main(void)
{
	int a = 42;
	int b = 21;
	printf("Before Call Function\n");
	printf("a: %d(address: %p)\n", a, &a);
	printf("b: %d(address: %p)\n", b, &b);
	swap(&a, &b);
	printf("Before Call Function\n");
	printf("a: %d(address: %p)\n", a, &a);
	printf("b: %d(address: %p)\n", b, &b);
}
