%{
#include<stdio.h>
%}

%token NUM

%%
E:E+T|T
T:T*F|F
F:`(`E`)`|NUM 
%%
int yyerror(char*S){
	printf("INVALID EXPRESSION!!!");
}
int main(){
	printf("Enter an Expression");
	yyparse();
	printf("VALID EXPRESSION.");
	return 0;

}

