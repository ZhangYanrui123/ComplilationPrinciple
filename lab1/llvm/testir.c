#include <stdio.h>
#include <stdlib.h>
#include "sylib.h"
const int N = 5;
#define DEBUG
int global = 3;
float* farray;
struct student{
	int no;
	float score;
	int grade;
};
void f(const int a,float b){
	printf("f called,const a = %d, b = %f\n",a,b);
}
int main(){
	printf("global is %d\n",global);
	int local = 4;
	local = getint();
	printf("local is %d\n",local);
	farray = (float*)malloc(sizeof(float));
	int i = 0;
	while(i < N)
		farray[i++] = (i * 2 % 7 + 5.2f) - 1;
	printf("farray[3] = %f\n",farray[3]);
	#ifdef DEBUG
	printf("This is a message for DEBUG!\n");
	#endif
	#ifndef DEBUG
	printf("It isn't DEBUG mode now!\n");
	#endif
	f(10, 2.5f);
	struct student stu;
	stu.no=2010139;
	stu.score=76.7;
	if(stu.score>90) stu.grade = 1;
	else stu.grade = 0;
	switch(stu.grade){
		case 0:{
			printf("U are bad one! Efforts needed\n");
			stu.score+=15;
		}break;
		case 1:printf("Well done!\n");break;
		default:break;
	}
}
