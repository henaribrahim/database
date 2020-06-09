use testDB

create table Department_tb1
( id int primary key ,
name varchar (50),
phonenumber varchar (50),
diseases varchar (50),
location varchar (50)
)

insert into Department_tb1 values (5,'Department of the brain and nerves' , 012746397,' Seventh nerve diseases','A3')
select *from Department_tb1
use testDB

create table patient_tb2 (
id int primary key,
firstname varchar (50),
lastname varchar (50),
doctor_id int ,
age int ,
department_id int ,
treatment_id int 

)
insert into patient_tb2 values (5,'alaa','ahmed',5,23,4,4)
select *from patient_tb2

create table doctor_tb3 (
id int primary key ,
firstname varchar (50),
lastname varchar (50),
department_id varchar(50),
phonenumber varchar(50),
age int 

)
insert into doctor_tb3 values (5,'mohammed','ali',5,0158546789,22)

select *from doctor_tb3

create table treatment_tb4 (
id int primary key ,
firstname varchar (50),
lastname varchar (50),
diseases varchar (50),
doctor_id int 
)

insert into treatment_tb4 values (5,'Voltaren','...','Inflammation of the bones',5)

select *from treatment_tb4
select name from Department_tb1
select location,phonenumber from Department_tb1;
select diseases from Department_tb1
where id=3;
select id from Department_tb1;

SELECT * FROM Department_tb1
WHERE name='Dental_section' AND diseases='Molar_nerve';

SELECT * FROM treatment_tb4
WHERE firstname='pandol' or firstname='insulin';

SELECT * FROM treatment_tb4
WHERE NOT diseases='diarrhea';

select *from patient_tb2;

SELECT max(age)
FROM patient_tb2;

SELECT MIN(age)
FROM patient_tb2;

SELECT TOP 3 * FROM doctor_tb3;

SELECT * FROM patient_tb2
WHERE lastname IN ('AHMED', 'GALAL');

SELECT * FROM patient_tb2
WHERE doctor_id NOT IN (4, 1, 3);

SELECT * FROM doctor_tb3
WHERE age BETWEEN '20' AND '25';


SELECT * FROM doctor_tb3
WHERE age not BETWEEN '20' AND '25';

SELECT * FROM doctor_tb3
WHERE age BETWEEN 20 AND 25
AND ID NOT IN (5,1);

SELECT * FROM treatment_tb4
WHERE diseases BETWEEN 'cold' AND 'suger'
ORDER BY diseases;


SELECT DISTINCT lastname FROM doctor_tb3;

SELECT COUNT(DISTINCT lastname) FROM doctor_tb3;

SELECT * FROM Department_tb1
ORDER BY name;


SELECT * FROM Department_tb1
ORDER BY name, diseases;

select *from patient_tb2

SELECT avg(age)
FROM patient_tb2;

SELECT COUNT(id), diseases
FROM Department_tb1
GROUP BY diseases;

SELECT * FROM doctor_tb3
WHERE lastname LIKE  'a%';


SELECT * FROM treatment_tb4
WHERE firstname LIKE '%l';


SELECT * FROM Department_tb1
SELECT SUM(id)
FROM Department_tb1
where id=3 or id=4

SELECT doctor_tb3.id, patient_tb2.doctor_id
FROM doctor_tb3
INNER JOIN patient_tb2 ON doctor_tb3.id= patient_tb2.id;

select *from treatment_tb4
SELECT treatment_tb4.doctor_id, patient_tb2.doctor_id
FROM patient_tb2
LEFT JOIN treatment_tb4 ON treatment_tb4.doctor_id= patient_tb2.id
ORDER BY patient_tb2.doctor_id ;



SELECT  patient_tb2.id, treatment_tb4.firstname,treatment_tb4.lastname
FROM patient_tb2
RIGHT JOIN treatment_tb4 ON patient_tb2.treatment_id=patient_tb2.treatment_id
ORDER BY patient_tb2.id;

SELECT patient_tb2.firstname, doctor_tb3.id
FROM patient_tb2
FULL OUTER JOIN doctor_tb3 ON patient_tb2.doctor_id=doctor_tb3.id
ORDER BY patient_tb2.firstname;

SELECT A.firstname AS fristname1, B.lastname AS lastname2, A.age
FROM patient_tb2 A, patient_tb2 B
WHERE A.id <> B.id
AND A.age > B.age
ORDER BY A.age;

select *from patient_tb2
insert into patient_tb2 values(6,'marina','ahmed',4,19,1,5)

select *from Department_tb1
insert into Department_tb1 values ()

UPDATE patient_tb2
SET doctor_id = 5, lastname= 'mohammed'
WHERE id= 5;

UPDATE patient_tb2
SET firstname = 'bondk', age= 36
WHERE id= 3;


select *from doctor_tb3
UPDATE doctor_tb3
SET department_id = 2, phonenumber= 01245565667
WHERE id= 4;

select *from treatment_tb4
UPDATE treatment_tb4
SET firstname = 'fucidin', diseases= 'antibiotic'
WHERE id= 1;

select *from Department_tb1
UPDATE Department_tb1
SET diseases = 'Fever', location='B4',name ='chlidern'
WHERE id= 3;

select *from treatment_tb4
insert into treatment_tb4 values (6,'revo','...','headache',5)

select*from Department_tb1 
insert into Department_tb1 values (6,'Leather',01177372828,'smallpox','c1')

select *from doctor_tb3 
insert into doctor_tb3 values (6,'monir','ali',1,011128474,36)
insert into doctor_tb3 values (7,'rahma','zaher',3,01536647,23)


DELETE FROM patient_tb2 WHERE id=6;
DELETE FROM Department_tb1 WHERE id=6;
DELETE FROM treatment_tb4 WHERE id=6;
DELETE FROM doctor_tb3 WHERE id=6 ;
DELETE FROM doctor_tb3 WHERE id=7;



