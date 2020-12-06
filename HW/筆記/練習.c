#include<stdio.h>
/*while(1)
{
    R0=R0+1
}*/
int main(){
    int R0=1;
LOOP:
    R0=R0+1;
    printf(" R0= %d\n",R0);
    goto LOOP;    
}