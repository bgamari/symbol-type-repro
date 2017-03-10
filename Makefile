%.s : %.ll
	llc -o $@ $+

main : lib.o main.c
	gcc -fPIC -o $@ $+

