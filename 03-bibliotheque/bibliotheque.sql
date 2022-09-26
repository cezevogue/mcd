-- ****************
-- Exercices
-- ****************

-- 1. Quel est l'id_abonne de Laura ?
SELECT * FROM abonne WHERE prenom='laura';

-- 2. L'abonné d'id_abonne 2 est venu emprunté un livre à quelles dates (date_sortie) ?
SELECT date_sortie FROM emprunt WHERE id_abonne=2;

-- 3. Combien d'emprunts ont été effectués en tout ?
SELECT COUNT(id_emprunt) FROM emprunt;

-- 4. Combien de livres sont sortis le 2011-12-19 ?
SELECT COUNT(id_emprunt) FROM emprunt WHERE date_sortie='2011-12-19';

-- 5. Une Vie est de quel auteur ?
SELECT auteur FROM livre WHERE titre='une vie';

-- 6. De combien de livres d'Alexandre Dumas dispose-t-on ?
SELECT COUNT(id_livre) FROM livre WHERE auteur="alexandre dumas";

-- 7. Quel id_livre est le plus emprunté ?
SELECT id_livre , COUNT(id_emprunt) AS nb FROM emprunt GROUP BY id_livre ORDER BY nb DESC LIMIT 1;

