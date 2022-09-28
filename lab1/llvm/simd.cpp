#include <iostream>
#include <xmmintrin.h>

__attribute__((aligned(16))) float A[] = {1.0f, 2.0f, 3.0f, 4.0f};
__attribute__((aligned(16))) float B[] = {3.0f, 4.0f, -1.0f, 2.0f};
__attribute__((aligned(16))) float C[] = {0.0f, 0.0f, 0.0f, 0.0f};

int main()
{   
    //load to reg
    __m128 a = _mm_load_ps(&A[0]);
    __m128 b = _mm_load_ps(&B[0]);
    //calculate
    __m128 c = _mm_mul_ps(a, b);
    //store result to C array
    _mm_store_ps(&C[0], c);

    std::cout << "result:" << C[0] << " " << C[1] << " " << C[2] << " " << C[3] << std::endl;
    return 0;
}
