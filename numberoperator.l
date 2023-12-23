%{
#include <stdio.h>
%}

%%
[0-9]+ {
    printf("number\n");
}

[-+*/=] {
    printf("operator\n");
}

. ;  

%%

int main() {
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}
