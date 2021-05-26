-- Lab 6

-- Ex 2
-- CREATE INDEX IDX_NUME ON angajati (NUME);

-- DROP INDEX IDX_NUME ON angajati;

-- EXPLAIN angajati;

-- Ex 3
/*SELECT id_angajat, nume, prenume, data_angajare
FROM angajati*/
 
-- SHOW INDEX from angajati;

-- Ex 4
 /*CREATE INDEX IDX_NUME ON angajati(ID_DEPARTAMENT);*/
/* explain SELECT *
FROM angajati INNER JOIN departamente
ON angajati.ID_DEPARTAMENT = departamente.ID_DEPARTAMENT;*/

-- Ex 5
-- Ex 6
-- SHOW INDEX FROM angajati;
-- SHOW INDEX FROM departamente;

-- Ex 7
-- a
/*EXPLAIN SELECT NUME, SALARIUL
FROM angajati
WHERE SALARIUL>2850; */

-- b
-- CREATE NONCLUSTERED INDEX Idx_nume ON angajati(nume);  
/*EXPLAIN NUME, angajati.ID_DEPARTAMENT, DENUMIRE_DEPARTAMENT
FROM angajati INNER JOIN departamente
ON angajati.ID_DEPARTAMENT = departamente.ID_DEPARTAMENT
WHERE ID_ANGAJAT = 104; */

-- Ex 8
-- Ex 9