SELECT person_id, COUNT(*) AS count_of_visits
FROM person_visits
GROUP BY person_id
ORDER BY count_of_visits DESC, person_id ASC;


/*
Let's make a simple aggregation, please write a SQL statement 
that returns person identifiers and corresponding 
number of visits in any pizzerias and 
sorts by number of visits in descending mode and 
sorts by person_id in ascending mode. 
Please take a look at the sample of data below.

person_id
count_of_visits
*/