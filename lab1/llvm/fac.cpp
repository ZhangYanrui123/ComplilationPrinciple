#include <iostream>
using namespace std;

int main(){
	int n;
	cin>>n;
	int i =2;
	int f = 1;
	while(i <=n){
		f *= i;
		i += 1;
	}
	cout<<f<<endl;
	return 0;
}
