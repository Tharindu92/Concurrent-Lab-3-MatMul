#include <iostream>
#include <stdlib.h>
#include <chrono>
using namespace std;
using namespace std::chrono;

void matrixMul_double_serial(double **matrix1, double **matrix2, double **ans, int size);



int main() {
    int i,j,k,size,t_size,samples;
    double avg_time_spent;
    srand(time(NULL));
    cout << "Enter Number of Samples ";
    cin >> samples;
    for(i = 0; i<10 ; i++){
        size = 100 + i*100;
   		avg_time_spent = 0;
		for(int l = 0; l < samples; l++){
	    	double **matrix1;
	    	matrix1 = new double *[size];
	    	for (int i = 0; i < size; i++) {
            	matrix1[i] = new double[size];
            }

	    	double **matrix2;
	    	matrix2 = new double *[size];
	    	for (int i = 0; i < size; i++) {
            	matrix2[i] = new double[size];
            }	

	    	double **ans;
	    	ans = new double *[size];
	    	for (int i = 0; i < size; i++) {
            	ans[i] = new double[size];
            }

            for(j = 0; j < size; j++){
	    		for(k = 0; k < size; k++){            
		    		matrix1[j][k] = (((double) rand() / RAND_MAX) * 100) + 1;
                    matrix2[j][k] = (((double) rand() / RAND_MAX) * 100) + 1;
            	}
	    	}
		    high_resolution_clock::time_point begin = high_resolution_clock::now();
		    matrixMul_double_serial(matrix1,matrix2,ans,size);
		    high_resolution_clock::time_point end = high_resolution_clock::now();
		    duration<double>time_spent = duration_cast<duration<double>>(end - begin);
			avg_time_spent += time_spent.count();
		}		
	    cout << "Time spent = " <<avg_time_spent/samples << "\nSize = " << size <<endl;
		
    }


    return 0;
}

void matrixMul_double_serial(double **matrix1, double **matrix2, double **ans, int size){
    for(int i=0; i < size; i++){
        for(int j=0; j < size; j++){
			ans[i][j] = 0;
            for(int k=0; k< size; k++){
                ans[i][j] += matrix1[i][k] * matrix2[k][j];
            }
        }
    }
}
