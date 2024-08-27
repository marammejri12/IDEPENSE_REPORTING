----------------------------------------------------------------------------
------------ Script de sélection des données insérées dans l'ODS -----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_ODS";


-- Liste des catégories
SELECT * FROM "ODS_CATEGORIE";

-- Liste des sous-catégories
SELECT * FROM "ODS_SOUS_CATEGORIE";

-- Liste des dépenses
SELECT * FROM "ODS_DEPENSE";

-- Liste des rejets
SELECT * FROM "ODS_REJET";