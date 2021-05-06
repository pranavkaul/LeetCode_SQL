SELECT t1.Id, t1.Company, t1.Salary 
FROM (SELECT id,company,salary, dense_rank() OVER (PARTITION BY company ORDER BY salary,id) AS Sorted,
COUNT(1) OVER (PARTITION BY Company) / 2.0 AS Counts FROM Employee) t1
WHERE Sorted BETWEEN Counts AND Counts + 1;


