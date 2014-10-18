test.bin: test.asm
	dasm test.asm -f3 -Iinclude -otest.bin

test: test.bin
	stella test.bin

clean:
	rm test.bin
