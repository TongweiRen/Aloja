#!/bin/sh

rm screenlog.*
screen -L -dmS test
screen -S test -X screen lli-10 mutants/simple_subscriber_mutated.ll
sleep 2
echo -ne '\n' | lli-10 bitcode/mqttc/simple_publisher.ll
screen -X -S test quit