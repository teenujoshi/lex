%{
#include <stdio.h>
%}

%%
[a-zA-Z]+ {
    printf("Word: %s, Length: %d\n", yytext, yyleng);
}

. ;  

%%
int yywrap(){}
int main() {
    yyin=fopen("inputlength.txt","r");
    yylex();
    return 0;
}
