SELECT * FROM worker where first_name LIKE '_i%';
SELECT * FROM worker ORDER BY salary;
SELECT DISTINCT department FROM worker;
SELECT department ,COUNT(*)FROM worker GROUP BY department;
SELECT department ,AVG(salary)FROM worker GROUP BY department;
SELECT department ,SUM(salary)FROM worker GROUP BY department;


