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
