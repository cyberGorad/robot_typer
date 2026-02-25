#!/bin/bash
IP_LOCAL=$(ip addr show wlo1 | grep "inet " | awk '{print $2}' | cut -d/ -f1)
BASE_URL="http://tsilavina.mywebcommunity.org/urls.php"
DOMAIN=$(curl -s $BASE_URL \
| sed 's/\\\//\//g' \
| sed -n 's/.*"\(http[^"]*\)".*/\1/p' \
| sed 's#http[s]*://##')
sleep 3
echo $DOMAIN

# Simuler la frappe de "sudo su"
mate-terminal &
sleep 1
xdotool type "pagekite.py $IP_LOCAL:9000 $DOMAIN"
sleep 0.5  # Délai avant d'envoyer Entrée

# Simuler Entrée
xdotool key Return


# Simuler Entrée pour valider le mot de passe
#xdotool key Return
