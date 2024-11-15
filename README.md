# Projet de Base de Données des Annonces Immobilières

## Description du Projet
Ce projet vise à modéliser une base de données relationnelle pour organiser et structurer les informations des annonces immobilières obtenues par web scraping. La base de données est déployée dans un conteneur Docker pour faciliter la gestion et le déploiement. **SQLAlchemy** est utilisé comme ORM pour interagir avec les données en Python.

---

## Table des Matières
1. [Description du Projet](#description-du-projet)
2. [Technologies Utilisées](#technologies-utilisées)
3. [Modélisation de la Base de Données](#modélisation-de-la-base-de-données)
4. [Configuration Docker](#configuration-docker)
5. [Installation et Déploiement](#installation-et-déploiement)
6. [Utilisation](#utilisation)
7. [Exemples de Requêtes SQL](#exemples-de-requêtes-sql)
8. [Sources et Références](#sources-et-références)

---

## Technologies Utilisées
- **PostgreSQL** : Système de gestion de base de données relationnelle.
- **Docker** : Conteneurisation pour l'environnement de la base de données.
- **SQLAlchemy** : ORM pour interagir avec la base de données en Python.
- **Python** : Langage de programmation pour le script de modélisation et d'interaction.

---

## Modélisation de la Base de Données

### Structure des Tables

**Annonce**
- `id` : Clé primaire.
- `title` : Titre de l'annonce.
- `price` : Prix (texte, peut inclure "PRIX NON SPÉCIFIÉ").
- `datetime` : Date et heure de publication (DateTime).
- `nb_rooms` : Nombre de pièces.
- `nb_baths` : Nombre de salles de bain.
- `surface_area` : Surface en m².
- `link` : URL de l'annonce.
- `city_id` : Clé étrangère vers Ville.

**Ville**
- `id` : Clé primaire.
- `name` : Nom de la ville.

**Équipement**
- `id` : Clé primaire.
- `name` : Nom de l'équipement (ex. : ascenseur, balcon).

**AnnonceEquipement** (table associative)
- `annonce_id` : Clé étrangère vers Annonce.
- `equipement_id` : Clé étrangère vers Équipement.

### Diagramme Entité-Relation (ERD)
- Relation plusieurs-à-un entre **Annonce** et **Ville**.
- Relation plusieurs-à-plusieurs entre **Annonce** et **Équipement** (via la table **AnnonceEquipement**).

---

## Configuration Docker
Le fichier `docker-compose.yml` configure un conteneur PostgreSQL avec les paramètres suivants :
- **Port d'accès** : Le port est exposé pour permettre l'accès local.
- **Identifiants de connexion** : Nom d'utilisateur, mot de passe et nom de la base de données.
- **Volume persistant** : Un volume Docker est monté pour conserver les données de manière persistante.

---

## Installation et Déploiement

### Étapes
1. Cloner le dépôt :
   ```bash
   git clone https://github.com/karzalSlimane/breif3
   cd breif3
