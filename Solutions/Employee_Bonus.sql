SELECT E.Name,B.Bonus FROM Employee E LEFT JOIN Bonus B ON E.empid = B.empid WHERE B.Bonus < '1000' OR B.Bonus is null;
