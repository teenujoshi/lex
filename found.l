%{
#include <stdio.h>
%}

%%
^[a][a-zA-Z]* {
    printf("%s\n", yytext);
}
^[A][a-zA-Z]* {
    printf("%s\n", yytext);
}


. ;

%%
int yywrap(){}
int main() {
    yyin=fopen("inputfileS.txt","r");

    
    yylex();
    return 0;
}
