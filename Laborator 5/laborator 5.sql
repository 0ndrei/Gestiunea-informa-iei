-- laborator 5
-- Laborator nr. 5 Gestiunea informatiei

-- Ex 1. Da, se va executa

-- Ex 2. Da

-- Ex 3. Nu

-- Ex 4. Forma corecta
/*SELECT ID_ANGAJAT, NUME, (SALARIUL * 12) AS salariu_anual
FROM angajati;*/

-- EX 5
/*SELECT id_angajat, nume, SALARIUL * 12 AS 'salariu anual' 
FROM angajati*/


/*DESCRIBE angajati;*/


/*SELECT *
FROM departamente;*/

-- EX 6
/*DESCRIBE departamente;*/

-- EX 7
/*SELECT id_angajat, nume, id_functie, data_angajare AS 'Lucreaza din'
FROM angajati;*/

-- EX 9
/*SELECT id_functie 
FROM angajati;*/

/*SELECT distinct id_functie 
FROM angajati;*/

-- EX 10
/*SELECT CONCAT (nume, ', ', id_functie) AS 'Angajat si functie'
FROM angajati*/

-- EX 11
/*SELECT CONCAT (id_angajat, ', ', prenume, ', ', nume, ', ', id_functie) AS 'Informatii complete'
FROM angajati*/

-- EX 12
/*SELECT prenume, nume
FROM angajati;*/

-- EX 13
/*SELECT id_angajat, nume, prenume, id_functie
FROM angajati;*/

-- EX 14
/*SELECT nume, prenume, salariul
FROM angajati
WHERE salariul > 12000*/

-- EX 15
/*SELECT NUME, PRENUME, ID_DEPARTAMENT
FROM ANGAJATI
WHERE ID_ANGAJAT=176*/

-- EX 16
/*SELECT nume, prenume, salariul
FROM angajati
WHERE SALARIUL NOT BETWEEN 5000 AND 12000*/

/*SELECT nume, prenume, salariul
FROM angajati
WHERE SALARIUL BETWEEN 5000 AND 12000*/

/*SELECT nume, prenume, salariul
FROM angajati
WHERE SALARIUL<5000 OR  SALARIUL>12000*/

-- EX 17
/*SELECT NUME, PRENUME, ID_FUNCTIE, DATA_ANGAJARE
FROM ANGAJATI
WHERE NUME='TAYLOR' OR NUME='MATOS'
ORDER BY DATA_ANGAJARE*/

/*SELECT NUME, ID_FUNCTIE, DATA_ANGAJARE
FROM angajati
WHERE NUME IN ('Matos','Taylor') 
ORDER BY DATA_ANGAJARE */


/*SELECT NUME, PRENUME, ID_FUNCTIE, DATA_ANGAJARE
FROM ANGAJATI
WHERE NUME LIKE '%TAYLOR%' OR NUME LIKE '%MATOS%'
ORDER BY DATA_ANGAJARE*/

-- EX 18
/*SELECT distinct NUME, ID_DEPARTAMENT
FROM angajati
WHERE ID_DEPARTAMENT IN (20,50)
ORDER BY NUME;*/

-- EX 19
/*SELECT nume, salariul 
FROM angajati 
WHERE (salariul BETWEEN 5000 AND 12000) AND ( ID_DEPARTAMENT IN (20,50))*/

-- EX 20
/*SELECT NUME, ID_FUNCTIE, DATA_ANGAJARE
FROM ANGAJATI
WHERE DATA_ANGAJARE BETWEEN '1987-02-20' AND '1989-05-01'
ORDER BY DATA_ANGAJARE*/

-- EX 21
/*SELECT nume, DATA_ANGAJARE
FROM angajati
WHERE DATA_ANGAJARE LIKE '%1994%'*/

/*SELECT nume, DATA_ANGAJARE
FROM angajati
WHERE YEAR (DATA_ANGAJARE) = 1994*/

-- EX 22
/*SELECT nume, prenume, id_functie
FROM angajati 
WHERE id_manager IS NULL*/

-- EX 23
/*SELECT NUME, SALARIUL, COMISION
FROM ANGAJATI
WHERE COMISION IS NOT NULL
ORDER BY SALARIUL, COMISION DESC*/

-- EX 24
/*SELECT NUME, SALARIUL, COMISION
FROM angajati
ORDER BY SALARIUL, COMISION DESC*/

-- EX 25
/*SELECT NUME, PRENUME
FROM ANGAJATI
WHERE NUME LIKE '%e%a%'*/

-- EX 26
/*SELECT NUME, PRENUME
FROM ANGAJATI
WHERE NUME LIKE '__A%'*/

-- EX 27
/*SELECT NUME, ID_DEPARTAMENT, ID_MANAGER
FROM angajati
WHERE NUME LIKE '%l%l%' AND (ID_DEPARTAMENT=30 OR ID_MANAGER=101);*/

-- EX 28
/*SELECT NUME, ID_FUNCTIE, SALARIUL
FROM angajati
WHERE ID_FUNCTIE LIKE '%clerk%' OR ID_FUNCTIE LIKE '%rep%' AND SALARIUL NOT IN (2500, 3500, 7000)*/

-- EX 29
/*SELECT NUME, SALARIUL, COMISION
FROM angajati
WHERE SALARIUL>(SALARIUL*COMISION*5)/100;*/

-- EX 30
/*SELECT ID_FUNCTIE
FROM angajati
WHERE ID_FUNCTIE LIKE '%CLERK%';*/

-- EX 31 
/*SELECT NR_COMANDA
FROM comenzi INNER JOIN angajati
ON angajati.ID_ANGAJAT=comenzi.ID_ANGAJAT
WHERE angajati.ID_ANGAJAT=161;*/

-- EX 32
/*SELECT NR_COMANDA
FROM comenzi
WHERE MODALITATE='online' AND `DATA`>'2000-01-01';*/

-- EX 33
/*SELECT ID_ANGAJAT, NUME, PRENUME, angajati.ID_MANAGER, angajati.ID_DEPARTAMENT, DENUMIRE_DEPARTAMENT
FROM angajati INNER JOIN departamente
ON angajati.ID_DEPARTAMENT=departamente.ID_DEPARTAMENT;*/

-- EX 34
/*SELECT CURDATE()*/
/*SELECT DATE_FORMAT(CURDATE(), '%b');*/

-- EX 35
/*select ID_ANGAJAT, NUME, SALARIUL, SALARIUL+ROUND((SALARIUL*15.5)/100, 0) as 'Salariul marit'
  from angajati*/
  
  -- EX 36
/*select ID_ANGAJAT, NUME, SALARIUL, 
 			SALARIUL+ROUND((SALARIUL*15.5)/100, 0) as 'Salariul marit', 
 			SALARIUL+ROUND((SALARIUL*15.5)/100, 0) - SALARIUL as 'Difenenta'
from angajati*/

-- EX 37
/*select upper(NUME) as 'Nume angajat', LENGTH(NUME) as 'Lungimea sirului'
from ANGAJATI
where nume like 'A%' or nume like 'J%' or nume like 'M%'*/

-- EX 38
/*SELECT CONCAT(PRENUME, ' ', NUME, ' castiga ', SALARIUL, ' lunar dar doreste ', SALARIUL*3) AS 'Salariu ideal'
FROM angajati*/

-- EX 39
/*select Concat(Upper(SUBSTR(PRENUME,1,1)),SUBSTR(PRENUME,2)), upper(NUME) as 'Nume angajat', LENGTH(NUME) as Lungime  
from ANGAJATI
where nume like 'A%' or nume like 'J%' or nume like 'M%'
order by lungime DESC*/

/*select Concat(Upper(SUBSTR(PRENUME,1,1)),SUBSTR(PRENUME,2)), upper(NUME) as 'Nume angajat', LENGTH(NUME) as Lungime  
from angajati
where SUBSTR(nume,1,1)='A' or SUBSTR(nume,1,1)='J' or SUBSTR(nume,1,1)='M'
order by lungime DESC*/

-- EX 40
/*SELECT ID_ANGAJAT, NUME, ID_DEPARTAMENT
FROM angajati
WHERE lower(prenume)= LOWER('Steven');*/

-- EX 41
/*SELECT ID_ANGAJAT, NUME, LENGTH(NUME) AS 'Lungime', POSITION('a' IN NUME) AS 'Pozitia'
FROM angajati
WHERE NUME LIKE '%e'*/


/*SELECT ID_ANGAJAT,NUME, LENGTH(NUME) AS LUNGIME, INSTR(UPPER(NUME), 'A') AS LITERA
FROM ANGAJATI
WHERE SUBSTR(NUME, -1) = 'E';*/

-- EX 42
/*SELECT ID_ANGAJAT , NUME, PRENUME, DATEDIFF(CURDATE(), DATA_ANGAJARE) AS 'zile', DATEDIFF(CURDATE(), DATA_ANGAJARE) div 7 AS 'saptamini'
FROM angajati
WHERE DATEDIFF(CURDATE(), DATA_ANGAJARE)%7 = 0*/

-- EX 43 
/*SELECT ID_ANGAJAT, NUME, SALARIUL, 
ROUND(SALARIUL*1.15,2) AS 'Salariu nou', 
ROUND((SALARIUL*1.15)/100,2) AS 'Numar sute'
FROM angajati
WHERE SALARIUL%1000<>0;*/

-- EX 44
/*SELECT NUME AS 'nume angajat', DATA_ANGAJARE AS 'data angajarii', COMISION
FROM angajati
WHERE comision IS NOT NULL;*/

-- EX 45
/*select nume, abs(TIMESTAMPDIFF(MONTH, curdate(), DATA_ANGAJARE)) AS luni_lucrate
from angajati
ORDER BY 2;*/

-- EX 46
/*SELECT DATE_ADD(NOW(), INTERVAL 30 DAY);*/
/* SELECT DATE_ADD(NOW(), INTERVAL 30 DAY) ,MONTHNAME(DATE_ADD(NOW(), INTERVAL 30 DAY));*/

-- EX 47
/*SELECT DATEDIFF('2021-12-31', NOW()) AS 'Pina la fine de an'*/

-- EX 48
 /*SELECT DATE_ADD(NOW(), INTERVAL 12 HOUR) AS ORE;*/
 
 /*SELECT DATE_ADD(NOW(), INTERVAL 5 MINUTE) AS MINUT;*/
 
 -- EX 49
/*SELECT CONCAT(NUME, ' ', PRENUME) AS 'ANGAJAT', DATA_ANGAJARE,
			DAYOFWEEK(DATA_ANGAJARE)=2 AS ZI,
			 DATE_ADD(DATA_ANGAJARE, INTERVAL 6 MONTH) AS 'NEGOCIERE'
FROM angajati 
WHERE DAYOFWEEK(DATA_ANGAJARE)=2 OR IFNULL(DAYOFWEEK(DATA_ANGAJARE)=2,0)*/

-- EX 50
/*select nume, ROUND(abs(TIMESTAMPDIFF(MONTH, curdate(), DATA_ANGAJARE)),0) AS Luni_lucrate
from angajati
ORDER BY Luni_lucrate;*/

-- EX 51
/*SELECT NUME, DATA_ANGAJARE, DAYOFWEEK(DATA_ANGAJARE) AS ZI
FROM ANGAJATI
ORDER BY ZI;*/

-- Ex 52
/*SELECT NUME, COMISION, IFNULL(COMISION, 'Fara comision') AS 'Comision'
FROM angajati*/

-- Ex 53
/*SELECT NUME, SALARIUL, COMISION, (SALARIUL+(SALARIUL*COMISION)/100) AS Sal_Com
FROM angajati
WHERE (SALARIUL+(SALARIUL*COMISION)/100) > 10000*/

-- EX 54
/*SELECT NUME, ID_FUNCTIE, SALARIUL,
CASE 
	WHEN ID_FUNCTIE = 'IT_PROG' THEN SALARIUL*1.2
	WHEN ID_FUNCTIE = 'SA_REP' THEN SALARIUL*1.25
	WHEN ID_FUNCTIE = 'SA_MAN' THEN SALARIUL*1.35
	ELSE SALARIUL
END AS Salariu_Marit
FROM angajati;*/

-- EX 55
/*SELECT ID_ANGAJAT, PRENUME, ID_FUNCTIE, SALARIUL
FROM angajati
WHERE ID_FUNCTIE != 'IT_PROG' AND SALARIUL < ALL (
	SELECT SALARIUL
	FROM angajati
	WHERE ID_FUNCTIE = 'IT_PROG');*/
	
-- Ce conditie trebuie pusa pentru a obtine acest rezultat?
/*select ID_ANGAJAT, PRENUME, ID_FUNCTIE, SALARIUL
from angajati
where SALARIUL between 7700 and 8800
order by SALARIUL DESC;*/

-- Ce conditie este trebuie pusa pentru a obtine acest rezultat?
/*select ID_ANGAJAT, PRENUME, ID_FUNCTIE, SALARIUL
from angajati
where SALARIUL between 2100 and 2800
order by SALARIUL DESC;*/

-- EX 56
/*SELECT ID_ANGAJAT, PRENUME, ID_FUNCTIE, SALARIUL
FROM angajati
WHERE ID_FUNCTIE != 'IT_PROG' AND SALARIUL < ANY (
	SELECT SALARIUL
	FROM angajati
	WHERE ID_FUNCTIE = 'IT_PROG');*/
	
-- EX 57
/*SELECT angajati.ID_ANGAJAT, NR_COMANDA
FROM angajati INNER JOIN comenzi ON angajati.ID_ANGAJAT = comenzi.ID_ANGAJAT;*/

-- EX 58
/*select ANGAJATI.ID_ANGAJAT, angajati.NUME
FROM angajati INNER JOIN comenzi
ON ANGAJATI.ID_ANGAJAT=COMENZI.ID_ANGAJAT
WHERE angajati.NUME='Greene' AND EXTRACT(MONTH FROM `DATA`)=11;*/

-- EX 59
/*SELECT DENUMIRE_PRODUS, rand_comenzi.PRET, rand_comenzi.CANTITATE, (CANTITATE*PRET) AS VALOARE
FROM produse INNER JOIN rand_comenzi
	ON produse.ID_PRODUS = rand_comenzi.ID_PRODUS;*/
	
-- EX 60
/*SELECT DENUMIRE_PRODUS, rand_comenzi.PRET, rand_comenzi.CANTITATE, (CANTITATE*PRET) AS VALOARE
FROM produse INNER JOIN rand_comenzi
	ON produse.ID_PRODUS = rand_comenzi.ID_PRODUS
	WHERE (CANTITATE*PRET) BETWEEN 1000 AND 2000;*/

-- EX 61
/*SELECT produse.ID_PRODUS, DENUMIRE_PRODUS, CANTITATE
FROM produse LEFT JOIN rand_comenzi
	ON produse.ID_PRODUS = rand_comenzi.ID_PRODUS;*/

-- EX 62
/*SELECT a.NUME, b.NUME
FROM angajati a, 
	angajati b
WHERE a.ID_MANAGER=b.ID_ANGAJAT;*/

-- EX 63
/*SELECT NUME
FROM angajati
WHERE ID_DEPARTAMENT IN (SELECT ID_DEPARTAMENT
							FROM angajati
							WHERE NUME='SMITH');*/

-- EX 64
/*SELECT DENUMIRE_PRODUS, MIN(PRET_MIN)
FROM produse INNER JOIN rand_comenzi
	ON produse.ID_PRODUS=rand_comenzi.ID_PRODUS
	GROUP BY DENUMIRE_PRODUS;*/

-- EX 65
/*SELECT NUME, ID_ANGAJAT, DENUMIRE_DEPARTAMENT
FROM angajati INNER JOIN departamente
	ON angajati.ID_DEPARTAMENT=departamente.ID_DEPARTAMENT;*/

-- EX 66
/*SELECT DISTINCT DENUMIRE_FUNCTIE, ID_DEPARTAMENT
from angajati inner join functii
	on angajati.ID_FUNCTIE = functii.ID_FUNCTIE
where ID_DEPARTAMENT = 30;*/

-- EX 67
/*SELECT NUME, PRENUME, COMISION, DENUMIRE_DEPARTAMENT, ORAS
FROM angajati 
INNER JOIN departamente
	ON angajati.ID_DEPARTAMENT = departamente.ID_DEPARTAMENT
INNER JOIN locatii
	ON departamente.ID_LOCATIE = locatii.ID_LOCATIE
WHERE COMISION != 0;*/

-- EX 68
/*SELECT NUME, PRENUME, DENUMIRE_DEPARTAMENT
FROM angajati INNER JOIN departamente
ON angajati.ID_DEPARTAMENT = departamente.ID_DEPARTAMENT
WHERE NUME LIKE '%a%';*/

-- EX 69
/*SELECT NUME, functii.DENUMIRE_FUNCTIE, departamente.ID_DEPARTAMENT, DENUMIRE_DEPARTAMENT
FROM angajati 
INNER JOIN departamente
	ON angajati.ID_DEPARTAMENT = departamente.ID_DEPARTAMENT
INNER JOIN functii
	ON angajati.ID_FUNCTIE = functii.ID_FUNCTIE
INNER JOIN locatii
	ON departamente.ID_LOCATIE = locatii.ID_LOCATIE
WHERE ORAS = 'Oxford';*/

-- EX 70
/*SELECT a.ID_ANGAJAT AS 'ANG#', a.NUME AS 'Angajat', b.ID_ANGAJAT AS 'Mgr#', b.NUME AS 'Manager'
FROM angajati a,
	angajati b
WHERE a.ID_MANAGER = b.ID_ANGAJAT;*/

-- EX 71
/*SELECT a.ID_ANGAJAT AS 'ANG#', a.NUME AS 'Angajat', b.ID_ANGAJAT AS 'Mgr#', b.NUME AS 'Manager'
FROM angajati a
	  left JOIN angajati b
ON  a.ID_MANAGER = b.ID_ANGAJAT;*/

-- EX 72
/*SELECT a.ID_DEPARTAMENT, a.NUME as angajat, a.PRENUME,
			b.NUME as coleg, b.PRENUME
FROM ANGAJATI a JOIN ANGAJATI b
ON (a.ID_DEPARTAMENT = b.ID_DEPARTAMENT)
WHERE a.ID_ANGAJAT != b.ID_ANGAJAT
ORDER BY a.ID_DEPARTAMENT, a.NUME, b.NUME;*/

-- EX 73
/*SELECT NUME, PRENUME, angajati.ID_FUNCTIE, DENUMIRE_FUNCTIE, DENUMIRE_DEPARTAMENT, SALARIUL
FROM angajati
	INNER JOIN functii
	ON angajati.ID_FUNCTIE = functii.ID_FUNCTIE
	INNER JOIN departamente
	ON departamente.ID_DEPARTAMENT = angajati.ID_DEPARTAMENT;*/

-- EX 74
/*SELECT NUME, PRENUME, DATA_ANGAJARE
FROM angajati
WHERE DATA_ANGAJARE > (SELECT DATA_ANGAJARE
								FROM angajati
								WHERE NUME = 'Gates');*/

-- EX 75
/*SELECT a.NUME AS 'Angajat', a.DATA_ANGAJARE AS 'Data_ang', b.NUME AS 'Manager', b.DATA_ANGAJARE AS 'Data_mgr'
FROM angajati a,
angajati b
WHERE a.ID_MANAGER = b.ID_ANGAJAT AND a.DATA_ANGAJARE < b.DATA_ANGAJARE; */