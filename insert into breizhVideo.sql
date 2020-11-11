-- -----------------------------------------------------
-- Problème de double primary key, lorsque je l'ai enlevé message d'erreurs... 
-- je n'ai malheruesement pas trouvé de fonctions pour solution
-- j'ai beau essayer en consultant la doc, il y a une logique qui m'échappe...
-- J'ai donc remis les doubles clés primaires... (pour  film actor et film category)
-- -----------------------------------------------------

INSERT INTO `essais2breizhvideo`.`film`  (film_id,title,description,release_year,length,rating,special_features,last_update)
SELECT film_id,title,description,release_year,length,rating,special_features,last_update  
FROM `sakila`.`film`;

INSERT INTO essais2breizhvideo.actor
SELECT *
FROM sakila.actor;

INSERT INTO essais2breizhvideo.category
SELECT *
FROM sakila.category;

INSERT INTO essais2breizhvideo.film_actor
SELECT *
FROM sakila.film_actor;

INSERT INTO essais2breizhvideo.film_category
SELECT *
FROM sakila.film_category;

