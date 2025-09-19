#include <stdio.h>

int is_p(int a);

int main(int argc, char **argv) {

    int number = 0;

    printf("Digita un numero: ");
    scanf("%d", &number);

    printf("Es numero primo:  %s\n", is_p(number) ? "true" : "false" );

    return 0;
}

int is_p(int a){
    if ( a >=1 && a <= 3 ) return 1;

    for (int i=2; i<a;i++){
        if ( a % i == 0) return 0;
    }
    return 1;
}