#include<string.h>
#include<stdio.h>

int main(int argc, char* argv[]){
    if (argc != 3){
        return 0;
    }
    else if(strncmp(argv[1], "-r", 2) == 0){
        remove(argv[2]);
    }
    return 0;
}
