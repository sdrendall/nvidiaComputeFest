
include ../make.common
BIN=x.naive_transpose
NVCC=nvcc
NVOPTS=-arch $(ARCH) -lineinfo

$(BIN): kernel.o
	$(NVCC) $(NVOPTS) -o $(BIN) kernel.o

kernel.o: kernel.cu
	$(NVCC) $(NVOPTS) -c kernel.cu 

clean:
	rm -rf kernel.o $(BIN)
