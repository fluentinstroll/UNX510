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



	if [[ $1 == "-nb" ]]; then
		echo "please enter either -n or -b, not both"
	fi
	if [[ $1 == "-bn" ]]; then
		echo "please enter either -n or -b, not both"
	fi

	if [[ $1 == "-n" ]]; then
		get_netmask
	fi
	if [[ $1 == "-b" ]]; then
		get_broadcast
	fi
	if [[ $1 == "" ]]; then
		echo "please enter an argument (-b or -n)"
	fi
	
