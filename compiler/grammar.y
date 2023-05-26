%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lex.yy.c"
%}

%token NOUN KINDWORD KINDCOMPLEMENT CN ADJ CONECTOR MOVE TURN DEGREE NUM

%%

instructions: instruction 
            | instructions nexo instruction              { printf("Instruction is valid\n"); }
            ;

instruction: noun kindsentence action cantidad 
            | noun kindsentence action cantidad complements
            ;

kindsentence: kindword 
            | kindword kindcomplement
            ;

complements: cn 
            | cn adj
           ;

nexos: conector 
     | conector conector
     ;

action: move
      | turn
      ;

cantidad: num 
        | degree
        ;

article: ARTICLE
       ;

noun: NOUN
    ;

kindword: KINDWORD
    ;

kindcomplement: KINDCOMPLEMENT
              ;

cn: CN 
  ;

adj: ADJ
    ;

conector: CONECTOR
        ;

move: MOVE
    ;

turn: TURN
    ;

degree: DEGREE
      ;

num: NUM
   ;

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(const char* s){
        printf("Invalid\n");
}