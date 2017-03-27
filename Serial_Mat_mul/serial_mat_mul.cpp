#include <iostream>
#include <stdlib.h>
#include <chrono>
using namespace std;
using namespace std::chrono;

double *matrixMul_double_serial(double* matrix1, double* matrix2, int size);

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

double *matrixMul_double_serial(double* matrix1, double* matrix2, int size){
    double sum = 0.0;
    int i,j,k;
    double* ans = (double*) malloc(size * size * sizeof(double));
    for(i=0; i < size; i++){
        for(j=0; j < size; j++){
            sum = 0;
            for(k=0; k< size; k++){
                sum += (*(matrix1+(i*size+k))) * (*(matrix2+(k*size+j)));
            }
            ans[i*size+j] = sum;
        }
    }
    return ans;
}
