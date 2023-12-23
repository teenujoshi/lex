%{
/*Count the number of words in an input file with two or more occurrences of the same letter.*/
    #include<stdio.h>
    int count = 0;
%}

%%
[a-zA-Z]* {
    int letter[256] = {0};
    for(int i = 0 ; i < yyleng ; i++){
        letter[yytext[i]]++;
    }
    for(int i = 0 ; i < 256 ; i++){
        if(letter[i] > 1){
            printf(yytext);
            printf("\n");
            count++;
            break;
        }
    }
}
[ \t\n]* {};

%%
int yywrap(){
    return 1;
}
int main(){
    yyin=fopen("input.txt","r");
    yylex();
    printf("the total number of such words are: %d" , count);
    return 0;
}
