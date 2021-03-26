SELECT D.Name AS 'Department', E.Name AS 'Employee', E.Salary AS 'Salary' FROM 
(SELECT DepartmentId, Name, Salary, dense_rank() OVER (PARTITION BY DepartmentId ORDER BY Salary DESC) AS R FROM Employee) AS E JOIN Department D ON E.DepartmentId = D.Id
WHERE R <= 3;
