# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# test-spectacle


Test Ruby on Rails

I- Contexte
Le but de ce test est de réaliser une application permettant d’importer, stocker, et visualiser
des données provenant d’un fichier CSV.
Le fichier de données initial correspond à une liste de réservations contenant les
informations sur l'acheteur, l'événement et la tarification.
II- Résultat attendu
L'application doit comprendre:
● Une page d'import de fichier
● Une page de récapitulatif des données en base
● Des tests unitaires représentant une couverture acceptable du code proposé
III- Exigences fonctionnelles
Je peux importer les données à partir d’un fichier CSV aux colonnes définies
Sur la page d’import, un formulaire me permet d’uploader un fichier CSV dont on considère
que la forme (nom et ordre des colonnes) sera toujours la même. A l’issue de l’import, les
données contenues doivent être sauvegardées dans une base relationnelle.
Hors périmètre :
● Le choix du SGBDR est libre (la configuration sqlite de base de Rails fait très bien
l’affaire dans le cadre de l’exercice)
● Certaines spécificités du domaine métier peuvent être interprétées de différentes
façons lors de la modélisation des données, en l’absence de connaissances de
l’existant. Tant que l’ensemble reste logique, il n’en sera pas tenu rigueur.
Je peux visualiser les indicateurs clés représentant les publics ainsi que la
performance globale
Sur une seconde page, je peux visualiser la valeur des indicateurs suivants :
● le nombre de réservations
● le nombre d’acheteurs uniques
● l’âge moyen des acheteurs (arrondi en chiffre entier)
● le prix moyen par représentation (arrondi à deux décimales, unité : €)
● le prix moyen par client (arrondi à deux décimales, unité : €)
Un lien sur la page d’import permet d’accéder à la page de visualisation, et vice versa.
