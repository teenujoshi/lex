/*program to calculate number of words character and lines *"*/
%option noyywrap
%{
#include<iostream>
#include<stdio.h>
int numline = 0;
int numword= 0;
int numchar=0;

%}

%%
([a-zA-Z])* {numword++;  
                numchar = numchar+yyleng;

            }
[\n][^\t ] {numline++;}            
[^\t\n ]+ {numchar = numchar+yyleng;}


%%

int main()
{ 
yyin=fopen("input.text","r");
yyout=fopen("output.text","w");

yylex();
fprintf(yyout,"number of word is %d \n number of character %d \n number of line %d",numword,numchar,(numline-1));

return 0;
}


