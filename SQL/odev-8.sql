--1-)
--CREATE TABLE employee (
--	id INTEGER,
--	name VARCHAR(50),
--	birthday DATE,
--	email VARCHAR(100)
--);

--2-)
--insert into employee (id, name, birthday, email) values (1, 'Matty', '1958-04-02', 'mleeming0@oakley.com');
--insert into employee (id, name, birthday, email) values (2, 'Penrod', '2000-06-24', 'pruddy1@4shared.com');

--3-)
UPDATE employee
SET name='John',
	birthday='2001-03-10',
	email='john@john.com'
WHERE id=1;

SELECT * FROM employee;

UPDATE employee
SET birthday='2000-01-01',
	email='blank@blank.com'
WHERE name = 'Chan';

SELECT * FROM employee;

UPDATE employee
SET name='2000-01-01',
	email='blank@blank.com'
WHERE birthday = '2000-06-24';

SELECT * FROM employee;

UPDATE employee
SET name='Duffie',
	birthday='1960-01-06'
WHERE email = 'djaray17@soup.io';

SELECT * FROM employee;

--4-)
DELETE FROM employee
WHERE id=3;

SELECT * FROM employee;

DELETE FROM employee
WHERE name='Charlena'
RETURNING *;

SELECT * FROM employee;

DELETE FROM employee
WHERE birthday='1959-04-17'
RETURNING *;

SELECT * FROM employee;


DELETE FROM employee
WHERE email='scroxley5@fotki.com';

SELECT * FROM employee;