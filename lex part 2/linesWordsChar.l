%{
    #include<stdio.h>
    int lines=0,words=0,c_letter=0,num=0,spl_char=0,total=0;
%}

%%
\n {lines++; words++;}
[\t ' '] words++;
[a-zA-Z] c_letter++;

. spl_char++;
%%

int main(){
    yyin=fopen("input.txt","r");
    yylex();
    total=c_letter+num+spl_char;
    printf("\nFile Contents...\n");
    printf("\n\t%d lines",lines);
    printf("\n\t%d words",words);
    printf("\n\t%d Characters",c_letter);
    printf("\n\t%d Special Characters",spl_char);
    printf("\n\t Total %d ",total);
    return 0;
}
int yywrap(){
    return 1;
}

/*[0-9] num++;*/
   // printf("\n\t%d Digits",num);




//    void|int|float|double|string|return|bool|char|for|if|do|while|exit"("[0-9]+")"|case|break|continue|switch|enum|struct|"size of"
//      { printf("\n%s -> ",yytext);
//               						 printf("%s\n","Keyword");}