# Projet Immobilier

Ce projet est une application qui gère des annonces immobilières avec une base de données PostgreSQL. L'application utilise Docker pour la conteneurisation, ce qui permet de facilement déployer et gérer les services (base de données et application).

## Fonctionnalités

- Gestion des annonces immobilières : titre, prix, nombre de pièces, nombre de salles de bain, surface, etc.
- Gestion des équipements associés à chaque annonce (par exemple : balcon, piscine, etc.).
- Gestion des villes où se trouvent les annonces.
- Requêtes pour filtrer et rechercher des annonces par prix, nombre de pièces, équipements, etc.

## Architecture

L'application est composée de deux services principaux :

1. **Base de données PostgreSQL** (service `db`).
2. **Application Python** (service `app`) qui communique avec la base de données.

### Services

- **db** : Utilise l'image officielle `postgres:13` pour exécuter une base de données PostgreSQL.
- **app** : Une application Python qui interagit avec la base de données via SQLAlchemy. Elle est construite à partir du Dockerfile situé dans le répertoire racine du projet.

## Prérequis

- Docker et Docker Compose doivent être installés sur votre machine.
  - Pour installer Docker, suivez les instructions [ici](https://docs.docker.com/get-docker/).
  - Pour installer Docker Compose, suivez les instructions [ici](https://docs.docker.com/compose/install/).

## Installation

### 1. Cloner le projet

Clonez ce projet sur votre machine locale :
```bash
git clone https://github.com/karzalSlimane/breif3
cd breif3

