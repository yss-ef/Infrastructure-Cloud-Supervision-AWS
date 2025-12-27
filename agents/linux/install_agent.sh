#!/bin/bash

# ============================================================
# Script d'installation de l'Agent Zabbix 6.4 sur Ubuntu 22.04
# Projet: Infrastructure Cloud de Supervision AWS
# Auteur: Fellah Youssef
# ============================================================

echo "--- 1. Téléchargement du dépôt Zabbix officiel ---"
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb

echo "--- 2. Installation du paquet de dépôt ---"
sudo dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
sudo apt update

echo "--- 3. Installation de l'agent Zabbix ---"
sudo apt install zabbix-agent -y

echo "--- 4. Configuration (Template) ---"
# Note: Dans un vrai script d'automatisation, on utiliserait 'sed' pour remplacer les IPs.
# Ici, on rappelle à l'utilisateur de le faire manuellement ou on copie le fichier de conf fourni.
echo "⚠️  N'oubliez pas de modifier /etc/zabbix/zabbix_agentd.conf :"
echo "   Server=IP_SERVEUR_ZABBIX"
echo "   ServerActive=IP_SERVEUR_ZABBIX"
echo "   Hostname=Client-Linux"

echo "--- 5. Redémarrage du service ---"
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent

echo "✅ Installation terminée. Vérifiez le statut avec 'systemctl status zabbix-agent'"