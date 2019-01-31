#include<stdio.h>

int main(){

int a[100][100],b[100][100],c[100][100];
int i,j,k;
int  n=3;
for(i=1;i<=3;i++){
for(j=1;j<=3;j++){
a[i][j]=i;
b[i][j]=j;
}
}

for(i=1;i<=3;i++){
for(j=1;j<=3;j++){
c[i][j]=a[i][j]+b[i][j];
}
}



for(i=1;i<=3;i++){
for(j=1;j<=3;j++){
printf("%d ",c[i][j]);
}
printf("\n");
}


return 0;

}


