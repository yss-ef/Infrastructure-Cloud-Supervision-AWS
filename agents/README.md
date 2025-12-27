# 🕵️ Agents Zabbix (Clients)

Ce dossier contient les scripts et configurations nécessaires pour connecter les instances cibles (Linux et Windows) au serveur de supervision.

## 🐧 Client Linux (Ubuntu)

### Installation
1. Transférez le script `install_agent.sh` sur la machine cible.
2. Rendez le script exécutable et lancez-le :
   ```bash
   chmod +x install_agent.sh
   sudo ./install_agent.sh