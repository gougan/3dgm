#include<stdio.h>

int main(){

	printf("Content-type: text/html\n\n");
    printf("<html>\n");
    printf("<head>\n");
    printf("<title>���</title>\n");
    printf("</head>\n");
    printf("<body>\n");
	printf("\t");
	for (int i=1;i<10;i++){
		printf("%d\t",i);
	}
	printf("\n");
	for (int i=1;i<10;i++){
		printf("%d\t",i);
		for(int j=1;j<10;j++){
			printf("%d\t",j);
		}
		printf("\n");
	}
    printf("</body>\n");
    printf("</html>\n");

	return 0;

}

