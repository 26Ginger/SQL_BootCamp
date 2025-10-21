SELECT DISTINCT
    person.name
FROM 
    person
JOIN 
    person_order ON person.id = person_order.person_id
JOIN 
    menu ON person_order.menu_id = menu.id
WHERE 
    person.gender = 'male'
    AND person.address IN ('Moscow', 'Samara')
    AND menu.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY 
    person.name DESC;

/*
Please find the names of all men from Moscow or Samara who order either pepperoni or mushroom pizza (or both). Please sort the result by person names in descending order. The sample output is shown below.
*/
