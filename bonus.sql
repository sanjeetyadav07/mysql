CREATE DATABASE demo;
use demo;
create table play(id INT   PRIMARY KEY
);
INSERT INTO play VALUES(1);
SELECT * FROM play;
DROP database demo;
CREATE DATABASE ORG;

USE ORG;
CREATE TABLE worker(
worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name CHAR(10),
last_name CHAR(10),
salary INT(10),
joining_date DATETIME,
department CHAR(10)
);
INSERT INTO worker (worker_id,first_name ,last_name,salary,joining_date ,
department )VALUES(001, 'Monicka', 'Arora', 100000, '2025-09-14 09:00:00', 'it'),
(002, 'Gungun', 'Aggarwal', 80000, '2024-09-14 09:00:00', 'it'),
(003, 'Rajesh', 'Wagle', 90000, '2025-07-14 09:00:00', 'it'),
(004, 'Manoj', 'Yadav', 300000, '2022-01-14 09:00:00', 'admin'),
(005, 'Manish', 'Sharma', 150000, '2022-09-14 09:00:00', 'hr'),
(006, 'Monicka', 'Chauhan', 50000, '2025-09-14 09:00:00', 'it');
SELECT * FROM worker;
CREATE VIEW custom_view AS SELECT SALARY FROM WORKER;
SELECT * FROM custom_view;
UPDATE  worker SET  first_name="roy"where  worker_id=006;
desc worker;

CREATE TABLE bonus(
worker_ref_id INT,
bonus_amount INT(10),
bonus_date DATETIME,
FOREIGN KEY(worker_ref_id) REFERENCES worker (worker_id)
ON DELETE CASCADE
);
INSERT INTO bonus (worker_ref_id ,
bonus_amount ,
bonus_date)VALUES(1, 5000, '2025-09-14 10:00:00'),
(2, 8000, '2024-09-15 09:30:00'),
(3, 6000, '2025-07-20 11:15:00'),
(4, 10000, '2022-01-20 14:45:00'),
(5, 7000, '2022-09-25 16:00:00');
SELECT * FROM worker WHERE salary between 80000 and 300000;



