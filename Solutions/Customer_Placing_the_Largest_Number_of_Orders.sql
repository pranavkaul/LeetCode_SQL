SELECT customer_number FROM (SELECT customer_number, COUNT(*) AS counts FROM Orders GROUP BY customer_number ORDER BY counts DESC) as w HAVING MAX(counts);
