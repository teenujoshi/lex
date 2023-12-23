/* Caesar cipher taking key value as 3 -where each letter in the plaintext is shifted a certain number of places down the alphabet as per the key given*/

%{
// #include<iostream> 
// #include <fstream>
#include <stdio.h>
#include <stdlib.h>
%}

%%

[a-zA-Z] {
    int shifted = yytext[0] + 3;
    if ((yytext[0] >= 'A' && yytext[0] <= 'Z' && shifted > 'Z') || 
        (yytext[0] >= 'a' && yytext[0] <= 'z' && shifted > 'z'))
        shifted -= 26;
    printf("%c", shifted);
}
. {
    printf("%s", yytext);
}

%%

int yywrap()
{
   return 1;
}

int main() {
    yyin=fopen("input.txt","r");
    yylex();
    fclose(yyin);
    return 0;
}
