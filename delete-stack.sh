#!/bin/bash

#To run this ./delete-stack.sh ser
# Check parameters
test $# = 1 || { echo "Need 1 parameter: Name of the stack to create"; exit 1; }
STACK="$1"

#to extract floating ip for deletion
floating_ip=$(openstack ip floating list | sed -n '4p' | cut -d " " -f 4 )
openstack ip floating delete $floating_ip
echo "floating ip $floating_ip deleted"
openstack server delete $STACK-frontend
echo "server $STACK-frontend deleted"
openstack server delete $STACK-backend-0
echo "server $STACK-backend-0 deleted"
openstack server delete $STACK-backend-1
echo "server $STACK-backend-1 deleted"
port1=$(neutron port-list | sed -n '4p' | cut -d " " -f 2)
port2=$(neutron port-list | sed -n '5p' | cut -d " " -f 2)
port3=$(neutron port-list | sed -n '6p' | cut -d " " -f 2)
port4=$(neutron port-list | sed -n '7p' | cut -d " " -f 2)
port5=$(neutron port-list | sed -n '8p' | cut -d " " -f 2)

neutron port-delete $port1
neutron port-delete $port2
neutron port-delete $port3
neutron port-delete $port4
neutron port-delete $port5


#openstack router delete $STACK-router
#echo "router $STACK-router deleted"
#openstack subnet delete $STACK-subnet
#echo "subnet $STACK-subnet deleted"
openstack stack delete $STACK --wait
echo "stack $STACK deleted"

