SELECT 
    m.pizza_name,
    m.price,
    pz.name AS pizzeria_name,
    pv.visit_date
FROM 
    person AS p
JOIN 
    person_visits AS pv ON p.id = pv.person_id
JOIN 
    menu AS m ON pv.pizzeria_id = m.pizzeria_id
JOIN 
    pizzeria AS pz ON m.pizzeria_id = pz.id
WHERE 
    p.name = 'Kate' 
    AND m.price BETWEEN 800 AND 1000
ORDER BY 
    m.pizza_name ASC,
    m.price ASC,
    pz.name ASC;


/*
Please write a SQL statement that returns a 
list of pizza names, pizza prices, pizzeria names, 
and visit dates for Kate and 
for prices ranging from 800 to 1000 rubles. 
Please sort by pizza, price, and pizzeria name. 
See a sample of the data below.
*/