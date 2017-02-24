#!/bin/bash
end=$((SECONDS+3))
chars="/-\|"

echo " "
echo -e "Geef de geheime sleutel op (SHIFT+CTRL+V)"
echo " "
read geheim
echo " "
echo -e "Even uitrekenen hoor...."
while [ $SECONDS -lt $end ]; do
  for (( i=0; i<${#chars}; i++ )); do
    sleep 0.5
    echo -en "${chars:$i:1}" "\r"
  done
done
echo " "
echo -e "Hoppa, ik weet het! Je gebruikersnaam en wachtwoord zijn:"
echo $geheim== | base64 --decode
echo " "
echo " "
