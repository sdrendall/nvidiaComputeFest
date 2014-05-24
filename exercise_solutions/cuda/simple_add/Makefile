
include ../make.common
BIN=x.simple_add
NVCC=nvcc
NVOPTS=-arch $(ARCH)

$(BIN): kernel.o
	$(NVCC) $(NVOPTS) -o $(BIN) kernel.o

kernel.o: kernel.cu
	$(NVCC) $(NVOPTS) -c kernel.cu 

clean:
	rm -rf kernel.o $(BIN)
