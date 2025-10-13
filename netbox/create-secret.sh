#!/bin/bash

# update-secret.sh

# Creates the secret used for postgres credentials
# Uses the default namespace, or whatever the current context is

kubectl create secret generic netbox-postgres-secret \
  --from-literal=POSTGRES_USER=netbox \
  --from-literal=POSTGRES_PASSWORD="$(cat postgres-password.txt)" \
  