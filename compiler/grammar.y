%{
#include <stdio.h>
//#include <stdlib.h>
//#include <string.h>
//#include "lex.yy.c"
int yylex();;
void yyerror(const char *s);
%}

%token NOUN KINDWORD KINDCOMPLEMENT CN ADJ CONECTOR MOVE TURN DEGREE NUM EOL

%%

INSTRUCTIONS: INSTRUCTION 				{ printf("Instruction is valid\n"); }
            | INSTRUCTIONS NEXOS INSTRUCTION              { printf("Instructions is valid\n"); }
            ;

INSTRUCTION: NOUN KINDSENTENCE ACTION CANTIDAD { printf("Instruction is valid ins 1\n"); }
            | NOUN KINDSENTENCE ACTION CANTIDAD complements 	{ printf("Instruction is valid ins 2\n"); }
            ;

KINDSENTENCE: KINDWORD 			{ printf("Kind Word\n"); }
            | KINDWORD KINDCOMPLEMENT	{ printf("Kind words\n"); }
            ;

complements: CN 			{ printf("Complement\n"); }
            | CN ADJ			{ printf("Complements\n"); }
           ;

NEXOS: CONECTOR 			{ printf("Conector \n"); }
     | CONECTOR CONECTOR		{ printf("Conectors\n"); }
     ;

ACTION: MOVE				{ printf("Move\n"); }
      | TURN				{ printf("Turn\n"); }
      ;

CANTIDAD: NUM 	{ printf("NUM\n"); }
        | DEGREE { printf("Degree\n"); }
        ;


%%

//void yyerror(const char* s){
//        printf("Invalid\n");
//}

//int main(){
//	printf("MAIN\n");
//	yyparse();
//	return 0;
//
//}
