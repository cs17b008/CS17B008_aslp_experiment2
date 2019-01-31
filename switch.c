#include<stdio.h>

int isprime(int p){

int i,flag;
for(i=2;i<p/2;i++) 
 {
 if(p%i==0){
   flag=flag+1;
   }
 }
   
if(flag==0&&p!=1){
return 0;
}
else {return 1;}
}





int main(){

int i,n;
scanf("%d",&i);
if(isprime(i)!=0){
n=2;}
else if(i%2==0){
 n=1;}
else{
 n=3;
 }
int j;
switch (n)
{    

     case 1:i=i+1;
            printf("%d",i);
             break;
             
     case 2:
     
             if((i%2)==0){
                 printf("%d",i);}
                 else{
                 i=i+1;
                 printf("%d",i);}
              break;
     case 3:
         
           for(j=i;j<i+20;j++){
           if(isprime!=0){
                  printf("%d",j);
                  break;}
                  }
           break;
}        
            

return 0;
}

           
            
    





