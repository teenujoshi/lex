%{
    #include<stdio.h>
%}

%%
[0-9]+      {
              int num = atoi(yytext);
    	      if (num % 2 == 0) {
        	printf("Even: %d\n", num);
    	    } else {
        	printf("Odd: %d\n", num);
            }
            }


-[0-9]+      {
              int num = atoi(yytext);
    	      if (num % 2 == 0) {
        	printf("Even: %d\n", num);
    	    } else {
        	printf("Odd: %d\n", num);
            }
            }



%%

int yywrap(void){}

int main(){
 yylex();
}