#!/bin/bash

get_netmask()
{
	echo -n "netmask addresses: "
	ifconfig | awk -F"netmask" '{print $2}' | awk -F"broadcast" '{print $1 $3}' 
}

get_broadcast()
{
	echo -n "broadcast addresses: "
	ifconfig | awk -F"broadcast" '{print $2}'
}

while getopts nb opt
do
	case $opt in
		nb) echo "enter either -n or -b, not both"; exit 1 ;;
		n) get_netmask ;;
		b) get_broadcast ;;
	esac
done