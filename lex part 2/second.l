%{
/*Given a sequence of paranthesis (), {}, {}, check if the sequence is balanced/valid.*/
    #include<stdio.h>
%}

%%
[()\[\]{}]* {
    char stack[100];
    int curr = -1;
    for(int i = 0 ; i < yyleng ; i++){
        if(yytext[i] == '(' || yytext[i] == '{' || yytext[i] == '['){
            stack[++curr] = yytext[i];
        }
        else{
            if(curr == -1){
                printf("you entered an invalid sequence");
                break;
            }
            else if(yytext[i] == ')' && stack[curr] == '('){
                curr--;
            }
            else if(yytext[i] == ']' && stack[curr] == '['){
                curr--;
            }
            else if(yytext[i] == '}' && stack[curr] == '{'){
                curr--;
            }
            else{
                printf("you entered an invalid sequence");
                break;
            }
        }
    }
    if(curr == -1){
        printf("You entered a valid sequence");
    }
    else{
        printf("you entered an invalid sequence");
    }
}
.* {printf("please enter only parenthesis");}

%%
int yywrap(){
    return 1;
}
int main(){
    yylex();
    return 0;
}
