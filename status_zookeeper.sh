#!/bin/sh
ansible zookeeper -i hosts -m shell -a "systemctl status zookeeper |head -4"

