
include ../make.common
BIN=x.matmul_CUBLAS
NVCC=nvcc
NVOPTS=-O3 -arch $(ARCH)

$(BIN): kernel.o
	$(NVCC) $(NVOPTS) -o $(BIN) kernel.o -lcublas

kernel.o: kernel.cu
	$(NVCC) $(NVOPTS) -c kernel.cu 

clean:
	rm -rf kernel.o $(BIN)
