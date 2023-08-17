// gcc -g -O0 jump.c -o jump

#include<stdio.h>

int main(){
    int a = 1;
    if(a > 0){
        printf("a is greater than 0\n");
    }
    else if(a < 0){
        printf("a is less than 0\n");
    }
    else{
        printf("a is equal to 0\n");
    }
}