test.bin: test.asm
	dasm test.asm -f3 -v5 -Iinclude -otest.bin -ltest.lst -stest.sym

test: test.bin
	stella test.bin

clean:
	rm test.bin
