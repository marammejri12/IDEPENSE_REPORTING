### Partie 1 : Extraction des données ==> Fichiers Excel vers CSV
#### Récupération du fichier Excel : SAISIE_DEPENSE.xlsx
##### Liste des composants utilisés ainsi que leurs familles d'appartenance:
Orchestration : tPrejob, tPostjob, tFileList, tFlowToIterate, tRunJob
Log & Errors  : tChronometerStart, tChronometerStop, tLogRow
Custom Code   : tJava
File          : tFileInputExcel, tFileOutputDelimited, tFileOutputExcel
Processing    : tMap
Misc          : tFixedFlowInput
### Partie 2 : Intégration des données csv dans l'Operational Data Store (ODS)
#### Étape de développement 1 : Base de données  ==> PostgreSQL
##### Exécution des scripts SQL
###### Répertoire GIT à utiliser : scriptSQL Dossier 1- Initialize

1-script_create_database.sql
	Création de la base de données IDEPENSE_INGESTION_DB (Vous pouvez directement créer la base de données à partir de l'interface pgAdmin 4)

2-script_create_schema_params.sql
	Création du schéma PARAMS_LOG

3-script_create_table_contexte.sql
	Création de la table CONTEXTE

4-script_insert_context_variable_depense.sql
	Insertion des données dans la table CONTEXTE 

###### Dossier 2- ODS1-script_create_schema_ods.sql--Création du schéma DEPENSE_ODS

2-script_create_table_ods.sql
	Création des différentes tables ODS

3-script_insert_context_variable_ods.sql
	Insertion des données dans la table CONTEXTE 

4-script_truncate_table_ods.sql
	Ce script permet de supprimer les données présentes dans les différentes tables ods.

5-script_select_table_ods.sql
	Ce script permet de sélectionner les données insérées dans les différentes tables ods.

#### Étape de développement 2 : Répertoire de données du jour
Répertoire GIT à utiliser : csvFiles
#### Étape de développement 3 : Processus d’intégration de données ==> Talend
1- Ouverture / Création  du projet Talend : IDEPENSE_REPORTING

2- Création des groupes de contexte 

3- Création des métadonnées : Connexion à la base de données

4- Configuration du chargement implicite des variables de contexte

5- Configuration d’insertion des Stats et Logs dans les tables de la BDD

6- Création des différents schémas génériques : Fichiers plats

7- Création des job ODS (Transformation et Chargement de la données)

8- Création du job principal 

9- Construction et planification de l’exécution du job principal

### Partie 3 : Intégration des données de l'ODS dans le Data WareHouse (DWH)
#### Étape de développement 1 : Base de données  ==> PostgreSQL
##### Exécution des scripts SQL --Répertoire GIT à utiliser : scriptSQL

1-script_create_schema_dwh.sql 
	Création du schéma DEPENSE_DWH 

2-script_create_table_dwh.sql
	Création des différentes tables DWH
	
3-script_select_table_dwh.sql
	Ce script permet de sélectionner les données insérées dans les différentes tables DWH.
	
4-script_truncate_table_dwh.sql
	Ce script permet de supprimer les données présentes dans les différentes tables DWH.

#### Étape de développement 2 : Processus d’intégration de données ==> Talend
1- Ouverture du projet Talend : IDEPENSE_REPORTING

2- Création d'un groupe de contexte 

3- Création de la métadonnées : Connexion à la base de données

4- Création des job DWH

5- Création du job principal 

6- Construction et planification de l’exécution du job principal






