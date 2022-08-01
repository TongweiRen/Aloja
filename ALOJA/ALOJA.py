#!/usr/bin/env python3

import sys
import time
import os
from pathlib import Path
from rich.console import Console
console = Console()
from parse_callgraph import main as parse_callgraph
from parse_callgraph_Plus import main as parse_callgraph_Plus
from test_mutants_mosquitto import main as test_mutants_mosquitto
from test_mutants_mqttc import main as test_mutants_mqttc
from test_mutants_Plus_wakaama import main as test_mutants_Plus_wakaama
from test_mutants_Plus_cyclonedds import main as test_mutants_Plus_cyclonedds

def controller(server_IR, client_IR):

    start = time.time()

    # Parse callgraph
    if 'mosquitto' in server_IR:
        parse_callgraph(server_IR, client_IR)
    elif 'mqttc' in server_IR or 'MQTT-C' in server_IR:
        parse_callgraph(server_IR, client_IR)
    elif 'wakaama' in server_IR:
        parse_callgraph_Plus(server_IR, client_IR)
    elif 'Helloworld' in server_IR:
        parse_callgraph_Plus(server_IR, client_IR)
    else:
        parse_callgraph(server_IR, client_IR)

    # Test mutants
    if 'mosquitto' in server_IR:
        test_mutants_mosquitto(server_IR, client_IR)
    elif 'mqttc' in server_IR or 'MQTT-C' in server_IR:
        test_mutants_mqttc(server_IR, client_IR)
    elif 'wakaama' in server_IR:
        test_mutants_Plus_wakaama(server_IR, client_IR)
    elif 'Helloworld' in server_IR:
        test_mutants_Plus_cyclonedds(server_IR, client_IR)

    end = time.time()
    console.print(f"[bold green][+][/bold green] ALOJA running time is {end-start}")
    sys.exit(0)


if __name__ == "__main__":

    ''' Mosquitto '''
    controller("bitcode/mosquitto/mosquitto_server.ll", "bitcode/mosquitto/mosquitto_sub.ll")

    ''' MQTT-C '''
    # controller("bitcode/mqttc/simple_subscriber.ll", "bitcode/mqttc/simple_publisher.ll")

    ''' Wakaama '''
    # controller("bitcode/wakaama/lwm2mserver.ll", "bitcode/wakaama/lightclient.ll")

    ''' Cyclonedds '''
    # controller("bitcode/cyclonedds/HelloworldSubscriber2.ll", "bitcode/cyclonedds/HelloworldPublisher2.ll")