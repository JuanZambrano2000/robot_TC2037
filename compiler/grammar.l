%{
#include "y.tab.h"
%}

%%
Robot | Machine | Automata | Android | Automaton		            { return NOUN; } 
please | pls  | Could | kindly | pardon | May | Would 		        { return KINDWORD; }
proceed | you | me | I	                                            { return KINDCOMPLEMENT;}
blocks | degrees				                                    { return CN; }
ahead 		                                                        { return ADJ; }
and | then | , | next | after	                                    { return CONECTOR; }
foward | move | navigate | go | transfer              		        { return MOVE; }
turn | rotate | spin                                  		        { return TURN; }
90 | 180 | 270 | 360                                 		        { return DEGREE; }
[0/9]+                                                		        { return NUM; }

[\t]+ ;
[\n]                                                                { return EOL; }
.	{}
%%