%.s : %.ll
	llc -o $@ $+

main : lib.s main.c
	gcc -fPIC -o $@ $+

