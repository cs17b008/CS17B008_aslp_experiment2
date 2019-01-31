#include<stdio.h>

int main(int argv, char*argc[]){
int value1=7;
int value2=5;
 int var1[7]={1,2,4,6,8,0,9};
register int i;
for(i=0;i<7;i++){
    var1[i]=var1[i]+value2;
    }
    
  return 0;
  }
  
