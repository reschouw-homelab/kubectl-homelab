#!/bin/bash

# get-namespace.sh

# Gets the current kubectl namespace for the current context
kubectl config view --minify --output 'jsonpath={..namespace}' && echo