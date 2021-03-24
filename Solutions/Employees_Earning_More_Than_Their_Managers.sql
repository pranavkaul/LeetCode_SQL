SELECT E.Name AS 'Employee' FROM Employee E, Employee B WHERE E.ManagerId = B.Id AND E.Salary > B.Salary;
