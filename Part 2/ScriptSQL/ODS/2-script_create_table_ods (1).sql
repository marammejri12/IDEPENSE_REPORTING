----------------------------------------------------------------------------
----------------- Script de création des différentes tables ----------------
----------------------------------------------------------------------------

-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_ODS";


----------------------------------------------------------------------------
----------------- Table N°1 : "DEPENSE_ODS"."ODS_CATEGORIE" ----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_CATEGORIE" ;
CREATE TABLE "ODS_CATEGORIE" 
(
"LB_CATEGORIE"    VARCHAR(100) NOT NULL,
"LB_NOM_FICHIER"  VARCHAR(100) NOT NULL,	
"DT_INSERTION"    TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  VARCHAR(100) NOT NULL,
CONSTRAINT "ODS_CATEGORIE_PKEY" PRIMARY KEY ("LB_CATEGORIE")
);


----------------------------------------------------------------------------
--------------- Table N°2 : "DEPENSE_ODS"."ODS_SOUS_CATEGORIE" -------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_SOUS_CATEGORIE" ;
CREATE TABLE "ODS_SOUS_CATEGORIE" 
(
"LB_SOUS_CATEGORIE" VARCHAR(100) NOT NULL,
"LB_CATEGORIE"    	VARCHAR(50)  NOT NULL,	
"LB_NOM_FICHIER"  	VARCHAR(100) NOT NULL,	
"DT_INSERTION"    	TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL,
CONSTRAINT "ODS_SOUS_CATEGORIE_PKEY" PRIMARY KEY ("LB_SOUS_CATEGORIE")
);


----------------------------------------------------------------------------
------------------- Table N°3 : "DEPENSE_ODS"."ODS_DEPENSE" ----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_DEPENSE" ;
CREATE TABLE "ODS_DEPENSE" 
(
"NUM_DEPENSE" 				VARCHAR(50)   NOT NULL,
"DT_DEPENSE" 				TIMESTAMP     NOT NULL,
"LB_DESCRIPTION_DEPENSE"	VARCHAR(255)  NOT NULL,
"LB_SOUS_CATEGORIE" 		VARCHAR(50)   NOT NULL,	
"MT_DEPENSE" 	 			NUMERIC       NOT NULL,
"LB_NOM_FICHIER" 			VARCHAR(100)  NOT NULL,	
"DT_INSERTION"    			TIMESTAMP     NOT NULL,
"LB_JOB_NAME"	  			VARCHAR(100)  NOT NULL,
CONSTRAINT "ODS_DEPENSE_PKEY" PRIMARY KEY ("NUM_DEPENSE")
);


----------------------------------------------------------------------------
--------------- Table N°4 : "DEPENSE_ODS"."ODS_DESCRIPTION" ----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_DESCRIPTION" ;
CREATE TABLE "ODS_DESCRIPTION" 
(
"LB_DESCRIPTION_DEPENSE"    VARCHAR(255) NOT NULL,
"LB_NOM_FICHIER"  			VARCHAR(100) NOT NULL,	
"DT_INSERTION"    			TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  			VARCHAR(100) NOT NULL,
CONSTRAINT "ODS_DESCRIPTION_PKEY" PRIMARY KEY ("LB_DESCRIPTION_DEPENSE")
);


----------------------------------------------------------------------------
--------------------- Table N°5 : "VENTE_ODS"."ODS_REJET" ------------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_REJET" ;
CREATE TABLE "ODS_REJET" 
(
"LB_CHEMIN_FICHIER" VARCHAR(255) NOT NULL,
"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,	
"NUM_LIGNE_REJET" 	INTEGER      NOT NULL,
"LB_LIGNE_REJET" 	VARCHAR(500) NOT NULL,
"LB_MESSAGE_REJET" 	VARCHAR(100) NOT NULL,
"LB_NOM_FLUX"		VARCHAR(100) NOT NULL,
"DT_REJET"    		TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL, 
CONSTRAINT "ODS_REJET_PKEY" PRIMARY KEY ("LB_CHEMIN_FICHIER", "LB_NOM_FICHIER", "NUM_LIGNE_REJET", "LB_LIGNE_REJET")
);