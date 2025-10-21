SELECT 
    pizzeria.name AS pizzeria_name, 
    pizzeria.rating AS rating_value
FROM 
    pizzeria
LEFT JOIN 
    person_visits
ON 
    pizzeria.id = person_visits.pizzeria_id
WHERE 
    person_visits.pizzeria_id IS NULL;  

/*
Denied
NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Write a SQL statement that returns a list of pizzerias 
with the corresponding rating value 
that have not been visited by people.
*/