#include <stdio.h>
#include <omp.h>

int main()
{
    int i = 5;
    int j = 6;
    int k = 7;
#pragma omp parallel
    printf("i=%d, j=%d, k=%d\n", i, j, k);

#pragma omp parallel
    printf("thread %d, nthreads %d\n", omp_get_thread_num(),
           omp_get_num_threads());
}
