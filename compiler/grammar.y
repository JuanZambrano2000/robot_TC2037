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

INSTRUCTIONS: INSTRUCTION  	{ printf("Instructions is valid\n"); }
| INSTRUCTIONS NEXOS 			{ printf("insS nexo VALID\n"); }
| INSTRUCTIONS INSTRUCTION  		{ printf("Instructions instruction is valid\n"); }
//| INSTRUCTION  			{ printf("Instruction is valid\n"); }
| INSTRUCTIONS EOL 			{ printf("INS VALID\n"); }
;

NEXOS: CONECTOR 			{ printf("Conector \n"); }
    | CONECTOR CONECTOR		{ printf("Conectors\n"); }
     ;
     
INSTRUCTION: NOUN KINDSENTENCE MOVE NUM  { printf("Instruction MOVE NUM is valid ins 1\n"); }
| NOUN KINDSENTENCE MOVE DEGREE  { printf("Instruction MOVE DEGREE is valid ins 1\n"); }
| NOUN KINDSENTENCE TURN DEGREE  { printf("Instruction DEGREEis TURN DEGREEvalid ins 1\n"); }
| NOUN KINDSENTENCE MOVE NUM  COMPLEMENTS 	{ printf("Instruction MOVE TURN is valid ins 2\n"); }
| NOUN KINDSENTENCE MOVE DEGREE COMPLEMENTS  { printf("Instruction MOVE NUM is valid ins 1\n"); }
| NOUN KINDSENTENCE TURN DEGREE COMPLEMENTS 	{ printf("Instruction TURN DEGREE is valid ins 2\n"); }           
;

KINDSENTENCE: KINDWORD 			{ printf("Kind Word\n"); }
| KINDWORD KINDCOMPLEMENT	{ printf("Kind words\n"); }
;

COMPLEMENTS: CN 			{ printf("Complement\n"); }
      | CN ADJ          { printf("Complement 2\n "); }   
      ;


/**
ACTION: MOVE				{ printf("Move\n"); }
      | TURN				{ printf("Turn\n"); }
      ;

CANTIDAD: NUM 	{ printf("NUM\n"); }
        | DEGREE { printf("Degree\n"); }
        ;
**/


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
