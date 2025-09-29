#!/bin/bash

# get-bearer-token.sh
# This script retrieves a bearer token for the admin-user in the kubernetes-dashboard namespace.

kubectl -n kubernetes-dashboard create token admin-user