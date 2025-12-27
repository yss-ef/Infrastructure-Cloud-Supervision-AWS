\# 🏗️ Architecture Cloud \& Réseau



Ce dossier documente l'infrastructure déployée sur AWS pour le projet de supervision centralisée.



\## 🗺️ Topologie Réseau (VPC)



L'infrastructure repose sur un \*\*Virtual Private Cloud (VPC)\*\* unique configuré pour héberger à la fois le serveur de supervision et les agents cibles.



!\[Topologie VPC](captures/schema\_vpc\_topology.png)



\### Détails Techniques

\- \*\*Nom du VPC\*\* : `Fellah-Youssef-VPC-Projet-Zabbix`

\- \*\*CIDR Block\*\* : `10.0.0.0/16`

\- \*\*Type de sous-réseau\*\* : Public (pour faciliter l'accès et le téléchargement des paquets)

\- \*\*Zone de disponibilité\*\* : `us-east-1` (N. Virginia)



---



\## 🛡️ Sécurité (Security Groups)



Un groupe de sécurité strict a été mis en place pour filtrer le trafic entrant vers les instances.



!\[Configuration Security Groups](captures/config\_security\_groups.png)



\### Matrice des flux autorisés



| Protocole | Port | Source | Description |

| :--- | :--- | :--- | :--- |

| \*\*TCP\*\* | `80` / `443` | Web | Interface Web Zabbix (HTTP/HTTPS) |

| \*\*TCP\*\* | `10050` | VPC / Any | Agent Zabbix (Polling passif) |

| \*\*TCP\*\* | `10051` | VPC / Any | Serveur Zabbix / Traps (Polling actif) |

| \*\*TCP\*\* | `22` | Mon IP | Administration SSH (Linux) |

| \*\*TCP\*\* | `3389` | Mon IP | Administration RDP (Windows) |



---



\## 💻 Ressources de Calcul (EC2)



Le parc informatique est composé de 3 instances dimensionnées selon les recommandations du projet.



!\[Instances EC2](captures/aws\_ec2\_instances.png)



1\. \*\*Serveur Zabbix\*\* (`t2.medium`) : Héberge Docker et la stack Zabbix.

2\. \*\*Client Linux\*\* (`t3.micro`) : Machine cible Ubuntu.

3\. \*\*Client Windows\*\* (`t3.medium`) : Machine cible Windows Server 2022.

