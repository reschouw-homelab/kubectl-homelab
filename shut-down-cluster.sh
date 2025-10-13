#!/bin/bash

# shut-down-cluster.sh

# SSH'es into each node and runs 'sudo shutdown now'

NODES=("192.168.1.100" "192.168.1.101" "192.168.1.102")

for NODE in "${NODES[@]}"; do
  ssh dorwin@$NODE "sudo shutdown now"
done