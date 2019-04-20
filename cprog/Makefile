# Author: Ajay Ladsaria
# Example Makefile to compile a C source file into LC-3 object code

# Name of C source file
CODE = fig14.1

# Directory with rcc, cpp, lcc
LCCDIR = ../lcc-1.3/install

# Directory with LC-3 library routines
LC3LIB = ../lcc-1.3/lc3lib

all: $(CODE).obj

remake: clean all

# C compiler (lcc) 
$(CODE).obj: $(CODE).c 
	../lcc-1.3/install/lcc $(CODE).c -o $(CODE).obj

$(CODE).c:

clean:
	rm $(CODE).lcc $(CODE).asm $(CODE).obj $(CODE).sym

