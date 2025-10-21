SELECT name
FROM pizzeria
WHERE id NOT IN (
    SELECT pizzeria_id
    FROM person_visits);


SELECT name
FROM pizzeria
WHERE NOT EXISTS (
    SELECT *
    FROM person_visits
    WHERE person_visits.pizzeria_id = pizzeria.id
)
ORDER BY name;

/*
Write 2 SQL statements that return a list of pizzerias 
that have not been visited by people 
using IN for the first and EXISTS for the second.
*/