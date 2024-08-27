----------------------------------------------------------------------------
------------ Script de sélection des données insérées dans le DWH ----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_DWH";


-- Liste des sous catégories
SELECT * FROM "DIM_SOUS_CATEGORIE";

-- Liste des description de dépense
SELECT * FROM "DIM_DESCRIPTION";

-- Liste des dépenses
SELECT * FROM "FAIT_DEPENSE";


SELECT "NUM_DEPENSE", "DT_JOUR", "LB_DESCRIPTION_DEPENSE", "LB_SOUS_CATEGORIE", "NB_MT_DEPENSE"
FROM "FAIT_DEPENSE" F
	INNER JOIN "DIM_CALENDRIER" C ON C."ID_DIM_CALENDRIER" = F."ID_DIM_CALENDRIER"
	INNER JOIN "DIM_DESCRIPTION" D ON D."ID_DIM_DESCRIPTION" = F."ID_DIM_DESCRIPTION"
	INNER JOIN "DIM_SOUS_CATEGORIE" S ON S."ID_DIM_SOUS_CATEGORIE" = F."ID_DIM_SOUS_CATEGORIE";

	
-- Calendrier
SELECT * FROM "DIM_CALENDRIER";