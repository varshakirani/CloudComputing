#!/bin/bash
#TO run this ./create-stack.sh ser

#openstack stack create -t server.yaml  --parameter name=serverInstance2 --parameter key_name=newKey --parameter flavor="Cloud Computing" --parameter  image=ubuntu-16.04 --parameter network=cc17-net --parameter zone="Cloud Computing 2017" --parameter security_groups=default stack1

#openstack stack create -t server-landscape.yaml --parameter key_name=newKey --parameter public_net=tu-internal ser

# Check parameters
test $# = 1 || { echo "Need 1 parameter: Name of the stack to create"; exit 1; }
STACK="$1"

# Create the stack using server-landscape.yaml and defining all necessary parameters
#[[TODO]]

openstack stack create -t server-landscape.yaml --parameter key_pair=newKey --parameter external_net=tu-internal --parameter flavor="Cloud Computing" --parameter image=ubuntu-16.04 --parameter zone="Cloud Computing 2017" $STACK --wait




