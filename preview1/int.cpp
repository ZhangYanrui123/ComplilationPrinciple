#include <iostream>
#include <sys/time.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
using namespace std;

int N,COUNT;
int* arr;
void init(){
	arr = new int[N];
}
void memset(){
	srand((unsigned)time(NULL));
	for(int i=0;i<N;i++){
		arr[i]=rand()%97;
	}
}
void loop1(){
	for(int i=0;i<N;i++){
		arr[i]=arr[i]*2000;
		arr[i]=arr[i]/10000;
	}
}
void loop2(){
	int *b=arr;
	for(int i=0;i<N;i++){
		*b=*b*2000;
		*b=*b/10000;
		b++;
	}
}
int main(int argc,char* argv[]){
	N=atoi(argv[1]);
	COUNT=atoi(argv[2]);
	init();
	struct timeval tv_start,tv_end;
	gettimeofday(&tv_start,NULL);
	for(int j=0;j<COUNT;j++){
		memset();
		loop1();
	}
	gettimeofday(&tv_end,NULL);
	long long time1=tv_end.tv_usec-tv_start.tv_usec;
	gettimeofday(&tv_start,NULL);
	for(int j=0;j<COUNT;j++){
		memset();
		loop2();
	}
	gettimeofday(&tv_end,NULL);
	long long time2=tv_end.tv_usec-tv_start.tv_usec;
	cout<<"time1:"<<time1<<"usec"<<endl;
	cout<<"time2:"<<time2<<"usec"<<endl;
}
