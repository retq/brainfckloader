.DEFAULT_GOAL := all

clean:
	-rm -f *.o
	-rm -f *.bin

all: clean
	as -o bfloader.o bfloader.S
	ld -o bfloader.bin --oformat binary -e init -Ttext 0x7c00 bfloader.o
