#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

#define CUDA_ERROR() printf("cuda error is %s\n",cudaGetErrorString( cudaGetLastError() ));

__global__ void add(int *a, int *b, int *c)
{
    *c = *a + *b;
}

int main()
{
    int a, b, c;
	int *d_a, *d_b, *d_c;
	int size = sizeof( int );

	/* allocate space for device copies of a, b, c */

	cudaMalloc( (void **) &d_a, size );
	/* enter code here to malloc d_b and d_c */
        FIXME

	/* setup initial values */

	a = 2;
	b = 7;
	c = -99;

	/* copy inputs to device */

	cudaMemcpy( d_a, &a, size, cudaMemcpyHostToDevice );
	/* enter code here to copy d_b to device */
        FIXME

	/* launch the kernel on the GPU */
	/* enter code here */
        FIXME

	/* copy result back to host */

	cudaMemcpy( &c, d_c, size, cudaMemcpyDeviceToHost );

	printf("value of c after kernel is %d\n",c);

	/* clean up */

	cudaFree( d_a );
	/* enter code here to cudaFree the d_b and d_c pointers */
	
	return 0;
} /* end main */
