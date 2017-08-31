# Makefile
#

SH = bash
CFLAGS = -g
LDFLAGS = -lm

all: decrypt encrypt

decrypt: decrypt.o
	gcc $^ -o $@ $(LDFLAGS)
	
encrypt: encrypt.o
	gcc $^ -o $@ $(LDFLAGS) 

decrypt.o: decrypt.c
	gcc -c $(CFLAGS) $< -o $@

encrypt.o: encrypt.c
	gcc -c $(CFLAGS) $< -o $@


clean:
	rm -rf *.o
	rm -rf encrypt decrypt
