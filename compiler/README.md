# Deliverable 3: YACC grammar

Problem :
	*We need a grammar that can detect sentences that can be translated into instruction that our cpu.py can detect and ejectute. The grammar is robot name, gratitude, action, cuantity, and could have a complement. In case that further instructions are needed, there need to be a nexo in between instructions. 
	
CFG : 

INSTRUCTIONS: INSTRUCTION  | INSTRUCTIONS NEXOS | INSTRUCTIONS INSTRUCTION  | INSTRUCTIONS EOL ;

NEXOS: CONECTOR  | CONECTOR CONECTOR;
     
INSTRUCTION: NOUN KINDSENTENCE MOVE NUM | NOUN KINDSENTENCE MOVE DEGREE | NOUN KINDSENTENCE TURN DEGREE  
| NOUN KINDSENTENCE MOVE NUM  COMPLEMENTS | NOUN KINDSENTENCE MOVE DEGREE COMPLEMENTS | NOUN KINDSENTENCE TURN DEGREE COMPLEMENTS ;

KINDSENTENCE: KINDWORD | KINDWORD KINDCOMPLEMENT ;

COMPLEMENTS: CN | CN ADJ ;

	
	* Examples of valid sentences: 
		* robot please move 2 blocks ahead
		* robot please move 3 blocks ahead and then robot could you turn 90 degrees , then robot pls move 2 blocks
		* automaton pls forward 10 blocks 
		* android spin 180 degrees
		* machine may you turn 180
		* machine rotate please 270 degrees after robot pls forward 2 blocks ahead
		
	* Examples of invalid sentences:
		* Robot moves 2 blocks
		* Robot moves 2 blocks quickly
		* Move 2 blocks right now
		* Robot  2 blocks moves
		* Moves Robot 2 blocks and turns 89 degrees
		* machine may you turn 180, robot please move 2 blocks ahead
		* robot please move 2 blocks ahead robot please move 2 blocks ahead
