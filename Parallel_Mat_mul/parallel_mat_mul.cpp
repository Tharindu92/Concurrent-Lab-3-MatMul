#include <iostream>
#include <omp.h>
#include <stdlib.h>
using namespace std;

double *matrixMul_double_parallel(double* matrix1, double* matrix2, int size);

double* matrix1;
double* matrix2;
double* ans;
int thread_count = 4;

int main() {
    int i,j,size,t_size;
    clock_t begin, end;
    double time_spent;
    srand(time(NULL));
    for(i = 0; i<10 ; i++){
        size = 100 + i*100;
        t_size = size * size;
        matrix1 = (double*) malloc(t_size * sizeof(double));
        matrix2 = (double*) malloc(t_size * sizeof(double));
        for(j = 0; j < t_size; j++){
            *(matrix1 + j) = random();
            *(matrix2 + j) = random();
        }
        begin = clock();
        ans = matrixMul_double_parallel(matrix1,matrix2,size);
        end = clock();
        time_spent = (double)(end - begin)/ CLOCKS_PER_SEC;
        cout << "Time spent = " <<time_spent << "\nSize = " << size <<endl;

    }

    return 0;
}

double *matrixMul_double_parallel(double* matrix1, double* matrix2, int size){
    int i,j,k;
    double* ans = (double*) malloc(size * size * sizeof(double));
    #pragma omp parallel for
        for(i=0; i < size; i++){
            for(j=0; j < size; j++){
                for(k=0; k< size; k++){
                    ans[i*size+j] += (*(matrix1+(i*size+k))) * (*(matrix1+(k*size+j)));
                }
            }
        }

    return ans;
}
