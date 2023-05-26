"""@package docstring
Documentation for CPU module.
More details.
"""

import csv
import numpy
import math

map_field = numpy.zeros(shape=(10,10))

dir = "RIGHT"
#dir = "DOWN"

x = 0
y = 0
def turn90():
    global dir 
    if dir == "UP":
        dir = "RIGHT"
    elif dir == "RIGHT":
        dir = "DOWN"
    elif dir == "DOWN":
        dir = "LEFT"
    else:
        dir = "UP" 

def turn180():
    global dir 
    if dir == "UP":
        dir = "DOWN"
    elif dir == "RIGHT":
        dir = "LEFT"
    elif dir == "DOWN":
        dir = "UP"
    else:
        dir = "RIGHT" 

def turn270():
    global dir 
    if dir == "UP":
        dir = "LEFT"
    elif dir == "RIGHT":
        dir = "UP"
    elif dir == "DOWN":
        dir = "RIGHT"
    else:
        dir = "DOWN" 

def movement(num):
    global x,y,dir, map_field
    map_field[y][x] = 1
    numOrigin = num
    if dir == "RIGHT":
        map_field[y][x+num] = 2
        for count in range(num-1):
            num = num - 1
            map_field[y][x+num] = 1
        x=numOrigin+x
    if dir == "LEFT":
        map_field[y][x-num] = 2
        for count in range(num-1):
            num = num - 1
            map_field[y][x-num] = 1
        x=numOrigin-x
    if dir == "DOWN":
        map_field[y+num][x] = 2
        for count in range(num-1):
            num = num - 1
            map_field[y+num][x] = 1
        y=numOrigin+y
    if dir == "UP":
            map_field[y-num][x] = 2
            for count in range(num-1):
                num = num - 1
                map_field[y-num][x] = 1
            y=numOrigin-y
    if x < 0 or x > 9 or y < 0 or y > 9:
        print("Salio del mapa ")

def func():
    """Documentation for a function.
    More details.
    """
    pass
def do_instruction(inst):
    print(inst)
    print(map_field)

def read_file():
    inst_list = []
    with open('cpu\src\instructions.asm') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        line_count = 0
        for row in csv_reader:
            inst_list.append(row)
            line_count = line_count + 1
    return inst_list

def main():
    inst_list = read_file()
    global x, y, dir, map_field
    i = 0
    #print(inst_list)
    #for inst in inst_list:
     #   do_instruction(inst)
    #map_field[9,0]=1
    print(map_field)
    print("----------------------------------------------------------------------------------")
    while x <=9 and x >= 0 and y <= 9 and y >=0:
       if inst_list[i][0] == 'mov':
           movement(int(inst_list[i][1]))
       else:
           if inst_list[i][1] == '90':
               turn90()
           elif inst_list[i][1] == '180':
               turn180()
           elif inst_list[i][1] == '270':
               turn270()
       print(map_field)   
       print()   
       print("Direccion actual",dir)
       print("Coordenadas actuales: (",x,",",y,")")
       print()
       print("---------------------------------------------------------------------------------")  
       i = i +1 
       
       if i <= len(inst_list):
        break

    
    
if __name__ == "__main__":
    main()
