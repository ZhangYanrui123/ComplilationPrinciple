#define g (a+b)
#define N 3
#define DEBUG
int factorial(int n){
	int i = 2;
	int f = 1;
	int x = i;
	long j = 10L;
	float * p = nullptr;
	#ifdef RELEASE
	int i = 3;
	#endif
	#ifdef DEBUG
	int a=3,b=4;
	i = N + g;
	#endif
	while(x<=n){
		f *= x;
		x += 1;
	}
	return f;
}
