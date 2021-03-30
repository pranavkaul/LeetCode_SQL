SELECT w2.Id
FROM Weather w1 JOIN Weather w2 ON DATEDIFF(w2.recordDate,w1.recordDate) = 1 AND w1.Temperature < w2.Temperature;

Oracle Solution

select W1.id
from Weather W1 , Weather W2
where W1.Temperature > W2.Temperature
and W2.recordDate = W1.recordDate -1;
