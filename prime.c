#include<stdio.h>

int main(int argv, char*argc[]){

int i;
int j=1;
int flag=0;
int k=0;
int a[100];

while(j<=100){

for(i=2;i<j/2;i++) 
 {
 if(j%i==0){
   flag=flag+1;
   }
 }
   
if(flag==0&&j!=1){
a[k]=j;
k++;
}
j=j+1;
 flag=0;
}


 
 return 0;
 }
 
 
 
 

