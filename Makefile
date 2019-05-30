#compiles with gcc
COMPILER = gcc

#Flags passed when compiling
C_FLAGS = -Wall -std=c99

# TODO: add targets to compile LinkedList.c
LinkedList: LinkedList.o
	$(COMPILER) $(C_FLAGS) -o LinkedList LinkedList.o

LinkedList.o: LinkedList.c
	$(COMPILER) $(C_FLAGS) -c LinkedList.c


# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data
test1: Data/test1.input
	./LinkedList < Data/test1.input > test1.result

test2: Data/test2.input
	./LinkedList < Data/test2.input > test2.result

test3: Data/test3.input
	./LinkedList < Data/test3.input > test3.result

# TODO: add a target that can run all the tests above.

test: test1 test2 test3
#
