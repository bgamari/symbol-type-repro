#include <stdio.h>

int hello(void);

int main() {
        int *prefix_data = (int*) &hello;
        printf("hi: %d\n", prefix_data[-1]);
        printf("hi: %d\n", hello());
        return 0;
}
