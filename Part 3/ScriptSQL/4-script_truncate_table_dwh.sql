----------------------------------------------------------------------------
----------- Script de suppression des données insérées dans le DWH ---------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "DEPENSE_DWH";


-- Suppression des dépenses
TRUNCATE "FAIT_DEPENSE";

-- Réinitialiser le numéro de séquence : Dépense
ALTER SEQUENCE "FAIT_DEPENSE_ID_FAIT_DEPENSE_seq" RESTART WITH 1;

-- Suppression des sous catégorie
TRUNCATE "DIM_SOUS_CATEGORIE" CASCADE;

-- Réinitialiser le numéro de séquence : sous catégorie
ALTER SEQUENCE "DIM_SOUS_CATEGORIE_ID_DIM_SOUS_CATEGORIE_seq" RESTART WITH 1;


-- Suppression des sous catégorie
TRUNCATE "DIM_DESCRIPTION" CASCADE;

-- Réinitialiser le numéro de séquence : description
ALTER SEQUENCE "DIM_DESCRIPTION_ID_DIM_DESCRIPTION_seq" RESTART WITH 1;





