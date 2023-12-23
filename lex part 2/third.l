/*program to replace word that end with E or e with *"*/
%option noyywrap
%{
// #include <iostream>
#include <stdio.h>

%}

%%
[a-zA-Z]+e {fprintf(yyout," %s","#");}
[a-zA-Z]+E {fprintf(yyout," %s","#");}


%%

int main()
{ 
yyin=fopen("input.text","r");
yyout=fopen("output.text","w");
yylex();
/*printf("number of positive %d \nnumber of negative: %d ",ve,ne);*/
return 0;
}


