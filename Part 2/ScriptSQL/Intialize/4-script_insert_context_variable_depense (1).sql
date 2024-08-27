----------------------------------------------------------------------------
----------- Script d'insertion de données dans la table CONTEXTE -----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "PARAMS_LOG";


----------------------------------------------------------------------------
-------- Requête N°1 : Insertion initiale des paramètres de contexte -------
----------------------------------------------------------------------------
INSERT INTO "CONTEXTE"
VALUES 
('serverName','localhost'),
('database','IDEPENSE_INGESTION_DB'),
('port','votrePort'),
('schema_param','PARAMS_LOG'),
('utilisateur','postgres'),
('password','votreMotDePasse'),
('additionalParam',''),
('projectFolder','C:/PROJET_TALEND/IDEPENSE_REPORTING/'),
('dataFolder','DATA/'),
('fieldSeparator','|'),
('encodage','UTF-8'),
('depenseFileRepo','INPUT/'),
('depenseFileName','SAISIE_DEPENSE.xlsx');