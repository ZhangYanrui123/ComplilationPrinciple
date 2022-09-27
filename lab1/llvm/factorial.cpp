#include <iostream>
using namespace std;
const int N = 18;
class Fac {
private:
	float* array;
	void func_private() {
		x--;
		cout << "private function" << endl;
	}
public:
	static int x;
	int n;
	Fac() {
		n = 0;
		x++;
		init();
		cout << "public construction" << endl;
	}
	Fac(int n) {
		this->n = n;
		x++;
		init();
		cout << "public construction with param" << endl;
	}
	void init() {
		x++;
		array = new float[N];
		for (int i = 0; i < N; i++) {
			array[i] = 0;
		}
	}
	float quick_factorial(int n) {
		if (n > N) {
			cout << "N is too large!" << endl;
			return 0;
		}
		if (n < 1) {
			cout << "N is invalid" << endl;
			return -1;
		}
		return array[n - 1] ? array[n - 1] : loop_factorial(n);
	}
	float loop_factorial(int n) {
		float res = 1;
		int i = 2;
		while (i <= n) {
			res *= i;
			i += 1;
			array[i - 1] = res;
		}
		return res;
	}
	~Fac() {
		delete[] array;
	}
};
int Fac::x = 0;
int main() {
	Fac* factorial = new Fac();
	cout << factorial->loop_factorial(3) << endl;
	cout << factorial->quick_factorial(7) << endl;
	int IN;
	cin>>IN;
	cout << factorial->quick_factorial(IN)<<endl;
	return 0;
}
