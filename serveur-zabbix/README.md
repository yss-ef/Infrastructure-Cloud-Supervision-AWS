# 🐳 Serveur Zabbix (Docker)

Ce dossier contient la configuration Docker Compose pour déployer la stack de supervision.

## Services inclus
- **zabbix-server** : Le cœur du système de monitoring.
- **zabbix-web** : L'interface graphique (Nginx/Apache).
- **zabbix-db** : La base de données MySQL 8.0 pour le stockage.

## 🛠️ Déploiement

1. Assurez-vous d'avoir Docker et Docker Compose installés :
   ```bash
   sudo apt update && sudo apt install docker.io docker-compose -y
   ```

2. Lancez la stack en mode détaché :
```bash
   docker-compose up -d  
   ```

3. Vérifiez que les conteneurs tournent :
```bash
docker ps
```

## ⚙️ Configuration
Les variables d'environnement sont gérées via des fichiers séparés pour plus de sécurité :
- `.env_db_mysql` : Identifiants Base de données.
- `.env_srv` : Paramètres du backend serveur.
- `.env_web` : Paramètres du frontend web (Timezone, Nom du serveur).

## 🌐 Accès
Une fois lancé, l'interface est accessible sur :
`http://<IP_PUBLIQUE_AWS>:80`

- **Login** : `Admin`
- **Password** : `zabbix`




