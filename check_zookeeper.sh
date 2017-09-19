#!/bin/sh

WORDS="ruok stat"

for W in $WORDS; do

echo Checking with \"$W\"
RUNCMD="echo $W |nc {{ansible_host}} {{zookeeper_port |d(2181)}}"

ansible zookeeper -i hosts -m shell -a "$RUNCMD"

done
