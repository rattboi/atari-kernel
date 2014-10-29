PROG = test

$(PROG).bin: $(PROG).asm
	dasm $(PROG).asm -f3 -v5 -Iinclude -o$(PROG).bin -l$(PROG).lst -s$(PROG).sym

test: $(PROG).bin
	stella $(PROG).bin

clean:
	rm -f $(PROG).bin $(PROG).lst $(PROG).sym
