

%{
    #include<stdio.h>
int positive_no = 0, negative_no = 0;
%}


%%
^[-][0-9]+ {negative_no++;
			printf("negative number = %s\n",
				yytext);} 

^[+][0-9]+ {positive_no++;
		printf("positive number = %s\n",
				yytext);}
 
[0-9]+ {positive_no++;
		printf("positive number = %s\n",
				yytext);} 
^[*][0-9]+ {printf("invalid input");}
[a-zA-Z]+ {printf("invalid input");}	
[a-zA-Z0-9]+ {printf("invalid input = %s\n",yytext);}

%%


int yywrap(){}
int main()											
{

yylex();
printf ("number of positive numbers = %d,"
		"number of negative numbers = %d\n",
				positive_no, negative_no);

return 0;
}




/*
^[+][a-zA-Z]^[0-9]+ {printf("invalid input");}
^[-][a-zA-Z]^[0-9]+ {printf("invalid input");}
[0-9a-zA-Z]+ {printf("invalid input");}
*/

