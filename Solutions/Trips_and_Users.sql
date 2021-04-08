SELECT T1.Request_at as Day, ROUND(SUM(T1.status != 'completed') / COUNT(Status),2) AS 'Cancellation rate'
FROM Trips T1 JOIN Users U1 ON T1.Client_Id = U1.Users_Id AND U1.Banned = 'No'
WHERE T1.Request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY T1.Request_at;
