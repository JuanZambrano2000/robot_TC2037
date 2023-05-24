import graphviz

def generate_robot_state_diagram():
    graph = graphviz.Digraph()
    states = {
        'up': 'up x,y',
        'right': 'right x,y',
        'down': 'down x,y',
        'left': 'left x,y',
        'mx': 'x+m, y',
        'mxx': 'x-m, y',
        'my': 'x, y+m',
        'myy': 'x, y-m',
        'error': 'error'
    }

    for state, label in states.items():
        graph.node(state, label=label)


    graph.edge('', 'right', label='ε')

    graph.edge('up', 'right', label='90')
    graph.edge('right', 'down', label='90')
    graph.edge('down', 'left', label='90')
    graph.edge('left', 'up', label='90')

    graph.edge('up', 'down', label='180')
    graph.edge('right', 'left', label='180')
    graph.edge('down', 'up', label='180')
    graph.edge('left', 'right', label='180')

    graph.edge('up', 'left', label='270')
    graph.edge('right', 'up', label='270')
    graph.edge('down', 'right', label='270')
    graph.edge('left', 'down', label='270')

    graph.edge('up', 'up', label='360')
    graph.edge('right', 'right', label='360')
    graph.edge('down', 'down', label='360')
    graph.edge('left', 'left', label='360')

    graph.edge('up', 'my', label='move m')
    graph.edge('my', 'up', label='ε')
    graph.edge('right', 'mx', label='move m')
    graph.edge('mx', 'right', label='ε')
    graph.edge('down', 'myy', label='move m')
    graph.edge('myy', 'down', label='ε')
    graph.edge('left', 'mxx', label='move m')
    graph.edge('mxx', 'left', label='ε')

    graph.edge('my', 'error', label='y>9')
    graph.edge('myy', 'error', label='y<0')
    graph.edge('mx', 'error', label='x>9')
    graph.edge('mxx', 'error', label='x<0')

    graph.format = 'png'
    graph.render('robot_state_diagram', view=True)

generate_robot_state_diagram()
