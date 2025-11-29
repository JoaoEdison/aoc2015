#include <stdio.h>

main()
{
	int h, w, l, sum;
	int a1, a2, a3, less;
	
	sum = 0;
	while (scanf("%dx%dx%d\n", &h, &w, &l) != EOF) {
		a1 = h*w;
		a2 = w*l;
		a3 = h*l;
		less = a1 < a2? a1 : a2;
		less = less < a3? less : a3;
		sum += ((a1 + a2 + a3)<<1) + less;
		printf("%d ", sum);
	}
	putchar('\n');
}
