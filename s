#!/bin/bash

# Simuler la frappe de "sudo su"
sleep 1
xdotool type "sudo su"
sleep 0.5  # Délai avant d'envoyer Entrée

# Simuler Entrée
xdotool key Return
sleep 0.1  # Attendre la demande de mot de passe

# Simuler la frappe du mot de passe
xdotool type "tsilavina2610"
sleep 0.5

# Simuler Entrée pour valider le mot de passe
xdotool key Return
