#!/usr/bin/env bash

randoc=$[RANDOM%14]
zero=0
one=1
two=2
three=3
four=4
five=5
six=6
seven=7
eight=8
nine=9
ten=10
eleven=11
twelve=12
thirteen=13
echo $randoc

# Pick random number for each US VPN region, open VPN connection and wait 5 seconds to allow connection to initalize.
# Run click script after VPN has initialized
if [ $randoc -eq $zero ]; then
	sudo openvpn /etc/openvpn/US\ Atlanta.ovpn & sleep 5; /usr/bin/python /home/click.py 
fi

if [ $randoc -eq $one ]; then
	sudo openvpn /etc/openvpn/US\ California.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $two ]; 
then
	sudo openvpn /etc/openvpn/US\ Chicago.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $three ];
then
	sudo openvpn /etc/openvpn/US\ Denver.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $four ];
then
	sudo openvpn /etc/openvpn/US\ East.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $five ];
then
	sudo openvpn /etc/openvpn/US\ Florida.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $six ]; 
then
	sudo openvpn /etc/openvpn/US\ Houston.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $seven ];
then
	sudo openvpn /etc/openvpn/US\ Las\ Vegas.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $eight ];
then
	sudo openvpn /etc/openvpn/US\ New\ York\ City.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $nine ];
then
	sudo openvpn /etc/openvpn/US\ Seattle.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $ten ];
then
	sudo openvpn /etc/openvpn/US\ Silicon\ Valley.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $eleven ];
then
	sudo openvpn /etc/openvpn/US\ Texas.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $twelve ];
then
	sudo openvpn /etc/openvpn/US\ Washington\ DC.ovpn & sleep 5; /usr/bin/python /home/click.py
fi

if [ $randoc -eq $thirteen ];
then
	sudo openvpn /etc/openvpn/US\ West.ovpn & sleep 5; /usr/bin/python /home/click.py
fi
