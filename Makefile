all : libtest.s main

%.s : %.ll
	llc -relocation-model=pic -o $@ $+

libtest.so : libtest.o
	gcc -shared -o $@ $+

main : main.o libtest.so
	gcc -fPIC -L. -ltest -o $@ $+

run : main
	LD_LIBRARY_PATH=. ./main

clean :
	git clean -f
