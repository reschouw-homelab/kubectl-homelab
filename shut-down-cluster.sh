#!/bin/bash

# shut-down-cluster.sh

# SSH'es into each node and runs 'sudo shutdown now'

NODES=("192.168.2.10" "192.168.2.11" "192.168.2.12")

for NODE in "${NODES[@]}"; do
  ssh dorwin@$NODE "sudo shutdown now"
done