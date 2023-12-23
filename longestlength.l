/*Write a lex program that prints the longest string and its length  . The input is to be read from 2 different text files - file1.txt and file2.txt. [Hint: use of yywrap()]*/
%option noyywrap
%{
#include <stdio.h>
#include <string.h>

char longest[1000];
int maxi = 0;
int current = 0;
%}

%%
[a-zA-Z]+ {
    current = strlen(yytext);
    if (current > maxi) {
        maxi= current;
        strcpy(longest, yytext);
    }
}
. ; 

%%


int main(int argc,char* argv[]){
	yyin = fopen("file1.txt", "r");
    yylex();
    fclose(yyin);
	yyin = fopen("file2.txt", "r");
	yylex();
    fclose(yyin);
	printf("Longest string: %s\n", longest);
    printf("Length: %d\n", maxi);

    return 0;

}
