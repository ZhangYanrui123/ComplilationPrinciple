int factorial(int n){
 int i = 2;
 int f = 1;
 int x = i;
 long j = 10L;
 float * p = nullptr;
 int a=3,b=4;
 i = 3 + (a+b);
 while(x<=n){
  f *= x;
  x += 1;
 }
 return f;
}
