SELECT *, CASE when (x+y) > z AND (x+z) > y AND (y+z) > x then 'Yes' else 'No' End AS triangle FROM Triangle;
