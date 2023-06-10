# Deliverable 1: Machine state and CPU simulator

Deliver as PDF generated from this README.md file the report that includes

* # Description of the problem
Design a deterministic or nondeterministic automaton that has the following characteristics:

* Its alphabet consists only of the tokens:
  * MOV
  * TURN
  * DIGIT
* The automaton determines the movement logic of a robot in a 2-dimensional matrix.

* # Funcionality
![WhatsApp Image 2023-06-08 at 13 19 20](https://github.com/JuanZambrano2000/robot_TC2037/assets/88795402/e3a966fb-fd39-488f-8550-a18784864cb5)
![WhatsApp Image 2023-06-08 at 13 18 59](https://github.com/JuanZambrano2000/robot_TC2037/assets/88795402/0914c9b4-3477-4394-aa27-5d92dea5d27f)

We can see that the automaton reads the instructions from the .asm file, thanks to the read_file() function. Then, within that function, all the instructions are stored in a list to subsequently send that list to assign the movement or orientation based on the given instruction. This allows us to update the point within the matrix where we are and print it as shown in the images above.


* # Diagram of the automata
* ![image](https://github.com/JuanZambrano2000/robot_TC2037/assets/88795402/10d8d398-22a7-438d-a39d-3d3528f39d5c)

