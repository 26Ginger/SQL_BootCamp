SELECT 
	pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person 
ON
person.id = person_visits.person_id
JOIN pizzeria
ON person_visits.pizzeria_id = pizzeria.id
JOIN 
    menu ON person_visits.pizzeria_id = menu.pizzeria_id
WHERE 
  visit_date = '2022-01-08' 
  AND person.name = 'Dmitriy'
  AND menu.price < 800;

/*
Please find the name of the pizzeria 
Dmitriy visited on January 8, 2022 and could eat pizza for less than 800 rubles.
*/