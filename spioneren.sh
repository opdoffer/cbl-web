#!/bin/bash
echo " "
echo -e "Dit commando luistert op het netwerk naar pakketjes met en wachtwoord"
echo " "
echo " "
echo -e "Open nu je browser en ga naar http://localhost en druk op ENTER"
echo -e "Log in op je website met je eigen wachtwoord"
echo -e "Zodra je hieronder gekke tekens ziet dan..."
echo -e "dubbelklik je op die gekke tekens en druk dan op SHIFT+CTRL+C"
echo " "
echo -e "Druk op CTRL-C om dit script te stoppen" 
echo " "
echo -e "Aan het luisteren....."
echo " "
sudo tcpdump -A -i any -v port http | grep "Authorization: Basic"
echo " "
echo " "
