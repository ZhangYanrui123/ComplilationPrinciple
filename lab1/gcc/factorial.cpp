#include <iostream>
using namespace std;

int main(){
	//can i say something?
	int i,n,f;
	cin>>n;
	i = 2;
	f = 1;
	while(i<=n){
		f *= i;
		i += 1;
	}
	cout<<f<<endl;
	return 0;
}
