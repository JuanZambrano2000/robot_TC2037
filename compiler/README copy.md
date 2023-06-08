# Deliverable 2: Lex analyzer

* NOUN - Robot's name, used to start any sentence
	robot
	machine
	automaton
	android
	automaton

* KINDWORD - Word used to address the robot in a friendly manner
	please
	pls
	could
	kindly
	pardon
	may
	would

* KINDCOMPLEMENT - Word that can complement a KINDWORD
	proceed
	you
	me

* CN - Word used to complement the sentence and specify if it's referring to blocks or degrees
	blocks
	degrees

* MOVE - Word that describes an instruction for the robot to move
	forward
	move
	navigate
	go
	transfer

* TURN - Word that describes an instruction for the robot to turn in the direction it's facing
	turn
	rotate
	spin

* DEGREE - Numbers used to indicate how much the robot will rotate
	90
	180
	270
	360

* NUM - Range of numbers for the robot to move
	[0-9]+

## Explanation:
This was the grammar we used to carry out our project. Additionally, we organized it in such a way that each word in the grammar does not interfere with the other. For example, the DEGREE words are placed before the NUM words because if we put them after, when entering the DEGREE values, they were recognized as NUM.
