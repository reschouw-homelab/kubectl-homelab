#!/bin/bash

# set-namespace.sh

# Sets the kubectl namespace for the current context
# If namespace is not provided, it resets to the default namespace

# Usage: ./set-namespace.sh <namespace>
NAMESPACE=$1

if [ -z "$NAMESPACE" ]; then
  kubectl config set-context --current --namespace=default
  exit 1
fi

kubectl config set-context --current --namespace=$NAMESPACE
