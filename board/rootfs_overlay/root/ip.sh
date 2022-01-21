#!/bin/ash

IF_NAME="eth0"
IP_ADDRESS="192.168.0.111"
SUBNET_MASK_BIT="24"

ip link set $IF_NAME down
ip addr del $IP_ADDRESS/$SUBNET_MASK_BIT dev $IF_NAME

ip addr add $IP_ADDRESS/$SUBNET_MASK_BIT dev $IF_NAME
ip link set $IF_NAME up
