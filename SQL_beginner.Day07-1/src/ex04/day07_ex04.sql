SELECT 
    p.name, 
    COUNT(*) AS count_of_visits
FROM person_visits pv
JOIN person p ON p.id = pv.person_id
GROUP BY p.name
HAVING COUNT(*) > 3

/*
Denied Syntax construction
WHERE

Please write a SQL statement that returns 
the person's name and the 
corresponding number of visits to any pizzerias 
if the person has visited more than 3 times (> 3). 
Please take a look at the sample data below.
name
count_of_visits
Dmitriy
4
*/