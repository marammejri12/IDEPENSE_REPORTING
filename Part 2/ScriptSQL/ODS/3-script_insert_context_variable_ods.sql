----------------------------------------------------------------------------
--------- Script d'insertion de données dans les tables paramètres ---------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "PARAMS_LOG";


----------------------------------------------------------------------------
-------- Requête N°1 : Insertion initiale des paramètres de contexte -------
----------------------------------------------------------------------------
INSERT INTO "CONTEXTE"
VALUES 
('schema_ods','DEPENSE_ODS'),
('mailTo','mail du destinataire'),
('mailFrom','mail de l''expéditeur'),
('mailSenderName','Nom de l''expéditeur'),
('mailCc',''),
('mailBcc',''),
('mailSMTPHost','smtp.office365.com'),
('mailSMTPPort','587'),
('mailUsername','mail de l''expéditeur'),
('mailPassword','votreMotDePasse');