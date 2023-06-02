%{
#include <stdio.h>
int yylex();;
void yyerror(const char *s);
%}

%union{
	int dval;
}

%token NOUN KINDWORD KINDCOMPLEMENT CN ADJ CONECTOR EOL MOVE TURN
%token <dval> NUM
%token <dval> DEGREE
%%

INSTRUCTIONS: INSTRUCTION  	//{ printf("Instructions is valid\n"); }
| INSTRUCTIONS NEXOS 			//{ printf("insS nexo VALID\n"); }
| INSTRUCTIONS INSTRUCTION  		//{ printf("Instructions instruction is valid\n"); }
//| INSTRUCTION  			//{ printf("Instruction is valid\n"); }
| INSTRUCTIONS EOL 			//{ printf("INS VALID\n"); }
;

NEXOS: CONECTOR 			//{ printf("Conector \n"); }
    | CONECTOR CONECTOR		//{ printf("Conectors\n"); }
     ;
     
INSTRUCTION: NOUN KINDSENTENCE MOVE NUM  	{ printf("mov,%d\n",$4); }
| NOUN KINDSENTENCE MOVE DEGREE  		{ printf("mov,%d\n",$4); }
| NOUN KINDSENTENCE TURN DEGREE  		{ printf("turn,%d\n",$4); }
| NOUN KINDSENTENCE MOVE NUM  COMPLEMENTS 	{ printf("mov,%d\n",$4); }
| NOUN KINDSENTENCE MOVE DEGREE COMPLEMENTS  	{ printf("mov,%d\n",$4); }
| NOUN KINDSENTENCE TURN DEGREE COMPLEMENTS 	{ printf("turn%d\n",$4);}           
;

KINDSENTENCE: KINDWORD 			//{ printf("Kind Word\n"); }
| KINDWORD KINDCOMPLEMENT	//{ printf("Kind words\n"); }
;

COMPLEMENTS: CN 			//{ printf("Complement\n"); }
      | CN ADJ          //{ printf("Complement 2\n "); }   
      ;


%%
