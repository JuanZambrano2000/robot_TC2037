%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lex.yy.c"
%}

%token NOUN KINDWORD KINDCOMPLEMENT CN ADJ CONECTOR MOVE TURN DEGREE NUM EOL

%%

INSTRUCTIONS: INSTRUCTION 
            | INSTRUCTIONS NEXOS INSTRUCTION              { printf("Instruction is valid\n"); }
            ;

INSTRUCTION: NOUN KINDSENTENCE ACTION CANTIDAD { printf("Instruction is valid ins 1\n"); }
            | NOUN KINDSENTENCE ACTION CANTIDAD complements
            ;

KINDSENTENCE: KINDWORD 
            | KINDWORD KINDCOMPLEMENT
            ;

complements: CN 
            | CN ADJ
           ;

NEXOS: CONECTOR 
     | CONECTOR CONECTOR
     ;

ACTION: MOVE
      | TURN
      ;

CANTIDAD: NUM 
        | DEGREE
        ;


%%

int main() {
    yyparse();
    return 0;
}

void yyerror(const char* s){
        printf("Invalid\n");
}
