#include <iostream>
#include <omp.h>
#include <stdlib.h>
#include <chrono>
using namespace std;
using namespace std::chrono;

double *matrixMul_double_parallel(double* matrix1, double* matrix2, int size);

double* matrix1;
double* matrix2;
double* ans;

int main() {
    int i,j,size,t_size;
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
        high_resolution_clock::time_point begin = high_resolution_clock::now();
        ans = matrixMul_double_serial(matrix1,matrix2,size);
        high_resolution_clock::time_point end = high_resolution_clock::now();
        duration<double> time_spent = duration_cast<duration<double>>(end - begin);
        cout << "Time spent = " <<time_spent.count() << "\nSize = " << size <<endl;

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
