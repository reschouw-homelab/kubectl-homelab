#!/bin/bash

# create-secret.sh

# Creates the secret used for postgres credentials
# Uses the default namespace, or whatever the current context is

if kubectl describe secret netbox-postgres-secret >/dev/null 2>&1; then
  echo "Secret already exists. Deleting current version..."
  kubectl delete secret netbox-postgres-secret
fi

kubectl create secret generic netbox-postgres-secret \
  --from-literal=POSTGRES_USER=netbox \
  --from-literal=POSTGRES_PASSWORD="$(cat postgres-password.txt)" \
  --from-literal=POSTGRES_SECRET_KEY="$(cat postgres-secret-key.txt)" \
  --from-literal=SUPERUSER_PASSWORD="$(cat netbox-password.txt)" \
  