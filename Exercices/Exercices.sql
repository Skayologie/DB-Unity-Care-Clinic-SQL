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
select AVG(date_of_birth) from patients 









































