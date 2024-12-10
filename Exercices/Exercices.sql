-- 1. CRUD Operations : Insérer un nouveau patient
INSERT INTO patients (first_name , last_name , gender , date_of_birth , phone_number) 
VALUES ("Alex","Johnson", "Male","1990-07-15","1234567890");

-- 2. SELECT Statement : Récupérer tous les départements
SELECT * FROM departments;

-- 3. ORDER BY Clause : Trier les patients par date de naissance
SELECT * From patients ORDER BY date_of_birth ASC;


-- 4. Filtrer les patients uniques par sexe (DISTINCT)
SELECT DISTINCT gender from patients;

-- 5. LIMIT Clause : Obtenir les 3 premiers médecins
SELECT * from doctors LIMIT 3;

-- 6. WHERE Clause : Patients nés après 2000 
SELECT * from patients where date_of_birth > '2000-01-01' ;

-- 7. Logical Operators : Médecins dans des départements spécifiques
SELECT * from departments WHERE department_name = 'Cardiology' OR department_name = 'Neurology';

-- 8. Special Operators : Vérifier des plages de dates
SELECT * from admissions where admission_date >= '2024-12-01' AND admission_date <= '2024-12-07' ;


-- 9. Conditional Expressions : Nommer les catégories d'âge des patients
SELECT * ,
case 
   when TIMESTAMPDIFF(YEAR , patients.date_of_birth ,CURDATE()) < 18 
    then "Enfant"
   when TIMESTAMPDIFF(YEAR , patients.date_of_birth ,CURDATE()) > 18 
    then "Adulte"
   when TIMESTAMPDIFF(YEAR , patients.date_of_birth ,CURDATE()) > 50
    then "Senior"
end As categorie
from patients


-- 10. Aggregate Functions : Nombre total de rendez-vous
select COUNT(*) from oppointments;

-- 11. COUNT avec GROUP BY : Nombre de médecins par département 
select department_id , COUNT(department_id) from doctors GROUP BY department_id 

-- 12. AVG : Âge moyen des patients
select AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) as AvgYear from patients


-- 13. MAX : Dernier rendez-vous
select MAX(oppointment_date) , oppointment_time  from oppointments  ;


-- 14. SUM : Total des admissions par chambre 
select room_id , SUM(
    case
     WHEN room_id IS NOT NULL
     THEN 1
    END
) AS total from admissions GROUP BY room_id;


-- 15. Constraints : Vérifier les patients sans e-mail
select * from patients where email = '' OR email is NULL;


-- 16. Jointure : Liste des rendez-vous avec noms des médecins et patients
select oppointment_date ,oppointment_time , doctors.first_name ,doctors.last_name , patients.first_name , patients.last_name from oppointments 
INNER JOIN doctors ON oppointments.doctor_id = doctors.doctor_id 
INNER JOIN patients ON oppointments.patient_id = patients.patient_id;


-- 17. DELETE : Supprimer les rendez-vous avant 2024 
DELETE FROM oppointments WHERE oppointment_date < '2024-01-01';


-- 18. UPDATE : Modifier un département 
UPDATE departments SET department_name = "Cancer Treatment" where department_name = "Oncology"


-- 19. HAVING Clause : Patients par sexe avec au moins 2 entrées
SELECT gender , count(*) AS ALLpat from patients GROUP BY gender HAVING ALLpat >= 2; 



-- 20. Créer une vue : Admissions actives
CREATE VIEW allAdmision AS SELECT * FROM admissions;


