# **Unity Care Clinic Database Management**

## 📋 **Description**

This project focuses on the design and implementation of a reliable and efficient database system for **Unity Care Clinic**. The database is tailored to manage essential hospital operations, including departments, doctors, patients, appointments, admissions, and prescriptions.


## ***Solutions :***
####
* ***1 . CRUD Operations** : Insérer un nouveau patient*:
```sql
INSERT INTO patients (first_name , last_name , gender , date_of_birth , phone_number) 
VALUES ("Alex","Johnson", "Male","1990-07-15","1234567890");
```

* ***2 . SELECT Statement** : Récupérer tous les départements*:
```sql
SELECT * FROM departments;
```

* ***3 . ORDER BY Clause** : Trier les patients par date de naissance*:
```sql
SELECT * From patients ORDER BY date_of_birth ASC;
```

* ***4 . DISTINCT** :  Filtrer les patients uniques par sexe*:
```sql
SELECT DISTINCT gender from patients;
```

* ***5 . LIMIT Clause** : Obtenir les 3 premiers médecins*:
```sql
SELECT * from doctors LIMIT 3;
```

* ***6 . WHERE Clause** :  Patients nés après 2000*:
```sql
SELECT * from patients where date_of_birth > '2000-01-01' ;
```

* ***7 . Logical Operators** : Médecins dans des départements spécifiques*:
```sql
SELECT * from departments WHERE department_name = 'Cardiology' OR department_name = 'Neurology';
```

* ***8 . Special Operators** : Vérifier des plages de dates*:
```sql
SELECT * from admissions where admission_date >= '2024-12-01' AND admission_date <= '2024-12-07' ;
```

* ***9 . Conditional Expressions** : Nommer les catégories d'âge des patients*:
```sql
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
```

* ***10 . Aggregate Functions** : Nombre total de rendez-vous*:
```sql
select COUNT(*) from oppointments;
```

* ***11 . COUNT avec GROUP BY** : Nombre de médecins par département*:
```sql
select department_id , COUNT(department_id) from doctors GROUP BY department_id 
```

* ***12 . AVG** : Âge moyen des patients*:
```sql
select AVG(YEAR(CURDATE()) - YEAR(date_of_birth)) as AvgYear from patients
```

* ***13 . MAX** : Dernier rendez-vous*:
```sql
select MAX(oppointment_date) , oppointment_time  from oppointments  ;
```

* ***14 . SUM** : Total des admissions par chambre*:
```sql
select room_id , SUM(
    case
     WHEN room_id IS NOT NULL
     THEN 1
    END
) AS total from admissions GROUP BY room_id;
```

* ***15 . Constraints** :  Vérifier les patients sans e-mail*:
```sql
select * from patients where email = '' OR email is NULL;
```

* ***16 . Jointure** : Liste des rendez-vous avec noms des médecins et patients*:
```sql
select oppointment_date ,oppointment_time , doctors.first_name ,doctors.last_name , patients.first_name , patients.last_name from oppointments 
INNER JOIN doctors ON oppointments.doctor_id = doctors.doctor_id 
INNER JOIN patients ON oppointments.patient_id = patients.patient_id;
```

* ***17 . DELETE** : Supprimer les rendez-vous avant 2024*:
```sql
DELETE FROM oppointments WHERE oppointment_date < '2024-01-01';
```

* ***18 . UPDATE** : Modifier un département*:
```sql
UPDATE departments SET department_name = "Cancer Treatment" where department_name = "Oncology"
```

* ***19 . HAVING Clause** : Patients par sexe avec au moins 2 entrées*:
```sql
SELECT gender , count(*) AS ALLpat from patients GROUP BY gender HAVING ALLpat >= 2; 
```

* ***20 . Créer une vue** : Admissions actives*:
```sql
CREATE VIEW allAdmision AS SELECT * FROM admissions;
```

