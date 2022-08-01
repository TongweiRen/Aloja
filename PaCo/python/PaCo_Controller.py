#!/usr/bin/env python3

from PaCo import PaCo
from PaCo_Plus import PaCo as PaCo_Plus

''' Mosquitto '''
PaCo("/home/aloja/ALOJA/bitcode/mosquitto/mosquitto_server.ll", "/home/aloja/ALOJA/bitcode/mosquitto/mosquitto_sub.ll", "/home/aloja/ALOJA/temp_outputs/PaCo_output.json")

''' MQTT-C '''
# PaCo("/home/aloja/ALOJA/bitcode/mqttc/simple_subscriber.ll", "/home/aloja/ALOJA/bitcode/mqttc/simple_publisher.ll", "/home/aloja/ALOJA/temp_outputs/PaCo_output.json")

''' Wakaama '''
# PaCo_Plus("/home/tren/Aloja_project/Aloja_Phase_2/aloja/Final_version/ALOJA/bitcode/wakaama/lwm2mserver.ll", "/home/tren/Aloja_project/Aloja_Phase_2/aloja/Final_version/ALOJA/bitcode/wakaama/lightclient.ll", '/home/aloja/ALOJA/temp_outputs/PaCo_output.json')

''' Cyclonedds '''
# PaCo_Plus("/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldSubscriber2.ll", "/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldPublisher2.ll", '/home/aloja/ALOJA/temp_outputs/PaCo_output.json')