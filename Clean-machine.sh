#!/bin/bash

# Eerste deel: Basisgereedschappen installeren
echo "Installeren van basisgereedschappen..."
sudo apt-get update
sudo apt-get install tmux python3 python3-pip git wget htop openssh-client openssh-server -y

# Vraag de gebruiker of aanvullende tools geïnstalleerd moeten worden
read -p "Wil je additionele tools installeren? (y/n): " answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    # Tweede deel: Additionele tools installeren
    git clone https://github.com/Menno-Gijzen/tool-install && cd tool-install && sudo chmod +x fresh-kali-installation.sh && sed -i 's/\r//' fresh-kali-installation.sh && ./fresh-kali-installation.sh

    # Eindbericht
    echo " =======Voltooid======= Alle additionele tools zijn geïnstalleerd"
else
    echo "Additionele tools zijn overgeslagen."
fi

# Eindbericht voor het hele script
echo "Script voltooid."
