----------------------------------------------------------------------------
----------------- Script de création des différentes tables ----------------
----------------------------------------------------------------------------

-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_DWH";


----------------------------------------------------------------------------
--------------- Table N°1 : "DEPENSE_DWH"."DIM_SOUS_CATEGORIE" -------------
----------------------------------------------------------------------------
-- DROP TABLE IF EXISTS "DIM_SOUS_CATEGORIE" ;
CREATE TABLE "DIM_SOUS_CATEGORIE" 
(
	"ID_DIM_SOUS_CATEGORIE"	SERIAL 	  	 NOT NULL,
	"LB_SOUS_CATEGORIE" 	VARCHAR(100) NOT NULL,
	"LB_CATEGORIE"      	VARCHAR(100) NOT NULL,
	"DT_INSERTION"    		TIMESTAMP    NOT NULL,
	"DT_MISE_A_JOUR"		TIMESTAMP    ,
	"BL_LIGNE_ACTIVE" 		INTEGER      NOT NULL,
	"LB_JOB_NAME"	  		VARCHAR(100) NOT NULL,
	CONSTRAINT "DIM_SOUS_CATEGORIE_PKEY" PRIMARY KEY ("ID_DIM_SOUS_CATEGORIE")
);


----------------------------------------------------------------------------
---------------- Table N°2 : "DEPENSE_DWH"."DIM_DESCRIPTION" ---------------
----------------------------------------------------------------------------
-- DROP TABLE IF EXISTS "DIM_DESCRIPTION" ;
CREATE TABLE "DIM_DESCRIPTION" 
(
	"ID_DIM_DESCRIPTION"		SERIAL 	  	 NOT NULL,
	"LB_DESCRIPTION_DEPENSE" 	VARCHAR(255) NOT NULL,
	"DT_INSERTION"    			TIMESTAMP    NOT NULL,
	"LB_JOB_NAME"	  			VARCHAR(100) NOT NULL,
	CONSTRAINT "DIM_DESCRIPTION_PKEY" PRIMARY KEY ("ID_DIM_DESCRIPTION")
);


----------------------------------------------------------------------------
--------- Table dimensionnelle N°3 : "DEPENSE_DWH"."DIM_CALENDRIER" --------
----------------------------------------------------------------------------

-- DROP TABLE IF EXISTS "DIM_CALENDRIER";
CREATE TABLE "DIM_CALENDRIER"
(
    "ID_DIM_CALENDRIER" 	INTEGER NOT NULL,
    "DT_JOUR"			 	DATE NOT NULL,
    "NB_ANNEE" 				INTEGER NOT NULL,
    "NB_SEMESTRE" 			INTEGER NOT NULL,
    "NB_TRIMESTRE" 			INTEGER NOT NULL,
    "NB_MOIS" 				INTEGER NOT NULL,
    "NB_JOUR_ANNEE" 		INTEGER NOT NULL,
    "NB_JOUR_MOIS" 			INTEGER NOT NULL,
    "NB_JOUR_SEMAINE" 		INTEGER NOT NULL,
    "NB_SEMAINE_ANNEE" 		INTEGER NOT NULL,
    "LB_MOIS" 				VARCHAR(100) NOT NULL,
    "LB_JOUR" 			    VARCHAR(100) NOT NULL,
    "BL_DERNIER_JOUR_MOIS"  INTEGER NOT NULL,
    "BL_BISSEXTILE" 		INTEGER NOT NULL,
    "BL_WEEK_END" 			INTEGER NOT NULL,
    "BL_JOUR_FERIE" 		INTEGER NOT NULL,
    "LB_JOUR_FERIE" 		VARCHAR(100),
    CONSTRAINT "DIM_CALENDRIER_PKEY" PRIMARY KEY ("ID_DIM_CALENDRIER")
);


----------------------------------------------------------------------------
------------------- Table N°4 : "DEPENSE_DWH"."FAIT_DEPENSE" ----------------
----------------------------------------------------------------------------
-- DROP TABLE IF EXISTS "FAIT_DEPENSE" ;
CREATE TABLE "FAIT_DEPENSE" 
(
	"ID_FAIT_DEPENSE"		SERIAL    NOT NULL,
	"ID_DIM_CALENDRIER" 	INTEGER   NOT NULL,
	"ID_DIM_DESCRIPTION"    INTEGER   NOT NULL,
	"ID_DIM_SOUS_CATEGORIE"	INTEGER   NOT NULL,
	"NUM_DEPENSE"    		VARCHAR   NOT NULL,
	"NB_MT_DEPENSE" 	 	NUMERIC   NOT NULL,
	"NB_DEPENSE" 	 		INTEGER   NOT NULL,	
	"DT_INSERTION"    		TIMESTAMP NOT NULL,
	"DT_MISE_A_JOUR"		TIMESTAMP ,
	"BL_LIGNE_ACTIVE" 		INTEGER      NOT NULL,
	"LB_JOB_NAME"	  		VARCHAR(100) NOT NULL,
	CONSTRAINT "FAIT_DEPENSE_PKEY" PRIMARY KEY ("ID_FAIT_DEPENSE"), 
	CONSTRAINT "FAIT_DEPENSE_SOUS_CATEGORIE_FKEY" FOREIGN KEY ("ID_DIM_SOUS_CATEGORIE") 
			REFERENCES "DIM_SOUS_CATEGORIE" ("ID_DIM_SOUS_CATEGORIE"),	
	CONSTRAINT "FAIT_DEPENSE_CALENDRIER_FKEY" FOREIGN KEY ("ID_DIM_CALENDRIER") 
			REFERENCES "DIM_CALENDRIER" ("ID_DIM_CALENDRIER"), 	
	CONSTRAINT "FAIT_DEPENSE_DESCRIPTION_FKEY" FOREIGN KEY ("ID_DIM_DESCRIPTION") 
			REFERENCES "DIM_DESCRIPTION" ("ID_DIM_DESCRIPTION")
);