#!/bin/bash


#here we going to install nipe in our system for anonymosity
inst()
{
echo -e '\e[36mfisrt thing we going to do is to install nipe progrem  on our system:\e[0m'
sudo perl nipe.pl install
}

#here we check our original and true ip
anon()
{
echo ' '
echo -e '\e[36mnow we check our true ip:\e[0m'
sudo perl nipe.pl status
sleep 3
#here we start the nipe progrem for became anonymous
echo -e '\e[36mnow we going to become anonymous:\e[0m'
sudo perl nipe.pl start
sudo perl nipe.pl status
ip=$(curl -s https://ipinfo.io/timezone/)

#here we check from where server we will going to connect to our victim
echo -e our anonymous ip location is in: "\e[31mcountry: $ip\e[0m"
echo
echo
echo
}

vps()
{
sshpass -p 231231 ssh -o StrictHostKeyChecking=no shai2@192.168.152.128 echo -e $'\e[36mnow we connect to the victim and performing nmap vulnerabilities script:\e[0m';echo;
nmap -Pn -sV --script=vulners $(hostname -I);sleep 3;echo;echo -e $'\e[36mnow we performing whois query:\e[0m';echo; whois $(hostname -I)
}

#here we install nipe progrem in our system
inst
#here we calling the nipe function that makes us anonymous
anon
#here wo calling the function that runs nmap vulnerability scan and whois query
vps




