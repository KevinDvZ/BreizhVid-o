--  1 rôle "staff" qui a les droits 
-- de lecture et d'écriture sur les tables de la base, 
CREATE ROLE IF NOT EXISTS Staff, Viewer;

GRANT ALL PRIVILEGES ON essais2breizhvideo.* TO Staff WITH GRANT OPTION;

-- 1 rôle "viewer" qui peut uniquement lire les tables.
GRANT SELECT ON essais2breizhvideo.* TO Viewer;


-- 2 utilisateurs
-- Un qui a le rôle de staff, et un qui est viewer
-- et en plus a le droit d'écriture sur la table preference.

-- on créer les utilisateurs
CREATE USER utilisateur_staff;
CREATE USER utilisateur_viewer;

GRANT Staff TO utilisateur_staff;
GRANT Viewer TO utilisateur_viewer;

GRANT utilisateur_staff
to Staff;

SET DEFAULT ROLE ALL TO utilisateur_staff;

GRANT utilisateur_viewer
to Viewer;



GRANT INSERT, UPDATE
ON essais2breizhvideo.preferences
TO utilisateur_viewer;