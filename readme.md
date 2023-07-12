# Projet perso

## Premiere partie

### A faire

### Fait

- Un dépôt github que tu vas appeler : artshop-api

- Un base de données  ( fichier.sql ) où tu vas créer deux tables : une table : work_of_art et une table : artist

- La table work_of_art aura 5 champs ( id, artist_id, title, price, url)

- La table artist aura 5 champs ( id, firstname, lastname, email, password, url)

- Un fichier seeding où tu vas créer deux artistes et 4 oeuvres

- l'url de l'artiste doit être un lien vers une image (qui montre sa tête ) prend des photos sur pixabay

- injectes les deux fichiers dans ton SGBD Postgres pour pouvoir voir si les deux fichiers ont été bien écrits

## deuxieme partie

### A faire

2- Créer les Models (un model par table en bdd (sauf table de liaison), on répercute les champs de la table dans le model, sauf id et associations (clé étrangères))

3- Tester les models (avec findALL, et findByPk) (créer un fichier test, qui contient des fonctions de tests, executer ce fichier, lire les résultats/erreurs en console)

4- Créer les associations entre les Models (choisir la bonne méthode (hasMany, belongsTo, belongsToMany) en fonction des cardinalités - Pour ça on essaye de se poser les bonnes questions, ça reste très littéral mine de rien (pour les questions regarde les com que j’ai mis pour les associations dans le repo errorHandler))

5- Tester les models (avec findAll et findByPk toujours, mais on rajoute les include :clin_d'œil: )

### Fait

1- Instancier Sequelize (similaire au fichier databaseSequelize d’Oquizz) et tester la connexion (on require dotenv en plus pour lire la variable d’environnement et on lance la commande node path/vers/le/fichier )
