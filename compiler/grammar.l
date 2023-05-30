%{
#include "y.tab.h"
#include<stdio.h>

%}

%%

robot 		{ return NOUN; } 
machine 	{ return NOUN; } 
automata 	{ return NOUN; } 
android 	{ return NOUN; } 
automaton	{ return NOUN; } 

please 		{ return KINDWORD; }
pls 		{ return KINDWORD; }
could 		{ return KINDWORD; }
kindly 		{ return KINDWORD; }
pardon 		{ return KINDWORD; }
may 		{ return KINDWORD; }
would		{ return KINDWORD; }

proceed		{ return KINDCOMPLEMENT;}
you 		{ return KINDCOMPLEMENT;}
me		{ return KINDCOMPLEMENT;}

blocks		{ return CN; }
degrees		{ return CN; }

ahead 		{ return ADJ; }

and 		{ return CONECTOR; }
then 		{ return CONECTOR; }
, 		{ return CONECTOR; }
next		{ return CONECTOR; }
after		{ return CONECTOR; }

foward 		{ return MOVE; }
move 		{ return MOVE; }
navigate 	{ return MOVE; }
go		{ return MOVE; }
transfer	{ return MOVE; }

turn		{ return TURN; }
rotate 		{ return TURN; }
spin            { return TURN; }

90 		{ return DEGREE; }
180 		{ return DEGREE; }
270		{ return DEGREE; }
360             { return DEGREE; }

[0-9]+          { return NUM; }
[\t]+ 		;
[\n]            { return EOL; }
.		{}
%%

int yywrap()
{
	return 1;
}
