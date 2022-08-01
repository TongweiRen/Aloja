with open("../callgraph.dot", 'r') as f:
    data = f.readlines()

with open("../mosquitto_callgraph.txt", 'w') as f:
    for item in data:
        f.write(item)