%{
#include <stdio.h>
int positive_no = 0;
int negative_no = 0;
%}

%%

^[-][0-9]+ {
    int num = atoi(yytext + 1); 
    int square = num * num;
    printf("Square of negative number = %d\n", square);
    negative_no++;
}

^[+][0-9]+ {
    int num = atoi(yytext + 1); 
    int cube = num * num * num;
    printf("Cube of positive number = %d\n", cube);
    positive_no++;
}

[0-9]+ {
    int num = atoi(yytext);
    if (num > 0) {
        int cube = num * num * num;
        printf("Cube of positive number = %d\n", cube);
        positive_no++;
    }
}


^[*][0-9]+ {
    printf("invalid input\n");
}

[a-zA-Z]+ {
    printf("invalid input\n");
}

[a-zA-Z0-9]+ {
    printf("invalid input = %s\n", yytext);
}

%%

int yywrap() {}

int main() {
    yylex();
    printf("Successfully Printed");
    return 0;
}
