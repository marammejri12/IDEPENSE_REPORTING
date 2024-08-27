----------------------------------------------------------------------------
----------- Script de suppression des données insérées dans l'ODS ----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_ODS";

-- Suppression des catégories
TRUNCATE "ODS_CATEGORIE";

-- Suppression des sous-catégories
TRUNCATE "ODS_SOUS_CATEGORIE";

-- Suppression des dépenses
TRUNCATE "ODS_DEPENSE";

-- Suppression des rejets
TRUNCATE  "ODS_REJET";