# ITESM Robot Language Compiler TC

Industry 4.0 encompasses intelligent manufacturing and the emergence of smart factories, which have recently extended their influence to the mechanical industry. This expansion is driven by the rapid advancement of technology and the growing demand for high-quality products with increased efficiency. Consequently, the role of robots has become crucial, highlighting the significance of robot programming languages. To address this challenge, the development and implementation of a robust robot language compiler are necessary.

This project tries to encourage the students to simulate the CPU of a car robot, create the programing language and its compiler

The Robot has the next constraints

* Only 2 supported instructions: 
	* MOV <num of blocks to move>
	* TURN <either: {90,180,270,360}>

* The field where the robot will move is a 2-D square matrix of 10 blocks

* If the instruction leads the robot out of the boundaries of the matrix, the CPU should return an illegal instruction error. 

* The programing language must be polite: 
	* Examples of valid sentences: 
		* Robot please move 2 blocks ahead
		* Robot please move 3 blocks ahead and then turn 90 degrees, then move 2 blocks
	* Examples of invalid sentences:
		* Robot moves 2 blocks
		* Robot moves 2 blocks quickly
		* Move 2 blocks right now
		* Robot  2 blocks moves
		* Moves Robot 2 blocks and turn 89 degrees

You can use ChatGPT to generate more examples of possible sentences to be analyzed by the compiler.

Compiler constraints: 

* Compiler must be in LEX and YACC
* Compiler must read the sentence from a file
* Compiler must generate a file: instructions. asm with the list of instructions, ie:

```
	MOV,2
	TURN,90
	MOV,4
```
	
## Deliverables: 

* Deliverable 1: Machine state and CPU simulator
* Deliverable 2: Lex analyzer
* Deliverable 3: YACC grammar
* Deliverable 4: Report in PDF generate from the README of your project

## Link to video:
* https://youtu.be/G1o2oDO8Nig
## Link to poster:
* https://www.canva.com/design/DAFlKSCJQwY/GKkxX3JGJB5mesddLoAtSg/edit?utm_content=DAFlKSCJQwY&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
	
## Team members
* Stefano Herrejon Antuñano A00571720
* Diego Sebastian García Cabrera A01634071
* Juan Pablo Zambrano Barajas A01636420
* Javier Perez Santiago A01662438

## How to compile and run
* Install bison and lex
` sudo apt install flex bison`
* Install Make
` sudo apt-get install -y bison flex vim git libbison-dev make `
* Go to ./compiler in terminal
* Run `make`
* Run `./robot > instructions.asm`
* Create instructions
* Install python library numpy
* Run cpu.py

