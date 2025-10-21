SELECT p.name, COUNT(*) AS count_of_visits
FROM person_visits 
INNER JOIN person p ON p.id = person_visits.person_id
GROUP BY p.name
ORDER BY count_of_visits DESC, p.name ASC
LIMIT 4;

/*
Please modify an SQL statement from Exercise 00 and 
return a person name (not an identifier). 
Additional clause is we need to see only top 4 people 
with maximum visits in each pizzerias and sorted by a person name. 
See the example of output data below.

name
count_of_visits
*/