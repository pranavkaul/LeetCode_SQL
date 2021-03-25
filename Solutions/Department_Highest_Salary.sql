SELECT D.Name as 'Department', E.Name as 'Employee',E.Salary as 'Salary'
FROM Employee E JOIN Department D ON E.DepartmentId = D.Id 
WHERE (E.DepartmentId,E.Salary) IN (SELECT DepartmentId, MAX(Salary) FROM Employee GROUP BY DepartmentId) ;
