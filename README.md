# ☁️ Infrastructure Cloud de Supervision Centralisée (AWS + Zabbix)

![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Zabbix](https://img.shields.io/badge/Zabbix-D60000?style=for-the-badge&logo=zabbix&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

> **Projet Académique - Cloud Computing**
> **Année :** 2025/2026
> **Auteur :** Fellah Youssef

## 📋 Description du Projet

Ce projet vise la mise en œuvre d'une **infrastructure de supervision centralisée** hébergée sur le cloud **Amazon Web Services (AWS)**. L'objectif est de déployer une solution capable de monitorer en temps réel un parc informatique hybride composé de serveurs **Linux (Ubuntu)** et **Windows Server**.

La solution technique repose sur la conteneurisation du serveur **Zabbix** via **Docker**, garantissant portabilité, isolation et facilité de déploiement.

📽️ [Voir la présentation sur Youtube](https://img.youtube.com/vi/oBkdGzMjU5s.jpg)

## 🏗️ Architecture

L'infrastructure est déployée dans un VPC AWS avec la topologie suivante :

- **Réseau :** VPC unique avec sous-réseau public et Security Groups stricts.
- **Serveur :** Instance EC2 `t2.medium` hébergeant la stack Docker (Zabbix Server + Web + DB).
- **Agents :** Instances EC2 (Linux `t3.micro` & Windows `t3.medium`) avec agents Zabbix configurés.

📂 **[Voir les détails de l'architecture et les schémas](./architecture/README.md)**

## 📂 Structure du Dépôt

```bash
.
├── 📂 agents/           # Scripts d'installation et configurations des clients (Linux/Windows)
├── 📂 architecture/     # Diagrammes réseaux et preuves de configuration (Captures)
├── 📂 rapport/          # Livrable final (PDF) et sources
├── 📂 server-zabbix/    # Fichiers de déploiement Docker (Docker-compose, env)
└── README.md            # Ce fichier
```

## 🚀 Guide de Démarrage Rapide

1. Prérequis

* Un compte AWS actif.

* Une paire de clés SSH (.pem) pour l'accès aux instances.

* Docker et Git installés sur la machine serveur.

2. Installation du Serveur

Connectez-vous à votre instance serveur et clonez ce dépôt :

```bash
git clone [https://github.com/yss-ef/Infrastructure-Cloud-Supervision-AWS.git](https://github.com/yss-ef/Infrastructure-Cloud-Supervision-AWS.git)
cd Infrastructure-Cloud-Supervision-AWS/server-zabbix
```

Lancez la stack via Docker Compose :

```bash
docker-compose up -d
```

### 3. Installation des Agents
Pour connecter vos machines clientes, suivez les instructions détaillées dans le dossier dédié :
👉 **[Consulter le guide d'installation des Agents](./agents/README.md)**

## 🌐 Accès à l'Interface

Une fois le déploiement terminé, l'interface Web Zabbix est accessible via l'IP publique de votre instance AWS :

- **URL :** `http://<VOTRE_IP_PUBLIQUE>:80`
- **Login par défaut :** `Admin`
- **Mot de passe :** `zabbix`

## 📄 Rapport de Projet

Le compte rendu technique détaillé, incluant les justifications des choix architecturaux et les preuves de fonctionnement, est disponible ici :

📥 **[Télécharger le Rapport PDF](./rapport/Examen_Cloud_Fellah_Youssef.pdf)**

---
*Réalisé dans le cadre de la 2ème année Cycle Ingénieur - Université Mundiapolis.*
