
include ../make.common
BIN=x.simple_stencil_smem
NVCC=nvcc
NVOPTS=-arch $(ARCH)

$(BIN): kernel.o
	$(NVCC) $(NVOPTS) -o $(BIN) kernel.o

kernel.o: kernel.cu
	$(NVCC) $(NVOPTS) -c kernel.cu 

clean:
	rm -rf kernel.o $(BIN)
