SELECT w2.Id
FROM Weather w1 JOIN Weather w2 ON DATEDIFF(w2.recordDate,w1.recordDate) = 1 AND w1.Temperature < w2.Temperature;
