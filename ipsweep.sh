#!/bin/bash
echo ""
echo $'\e[41;1m   ipsweep by Rushbruh    \033[0m'
echo ""


if [ "$1" == "" ]
	then
	echo $'\e[31;1mYou forgot an IP address!\e[0m'
	 echo $'\e[33;1mSyntax:\e[0m bash ipsweep.sh 192.168.1'
else
	echo $'\e[34;1m  ipsweep start  \e[0m'
	echo ""
	for ip in `seq 1 254`; do
        sleep 0.1
	ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	
done
fi


