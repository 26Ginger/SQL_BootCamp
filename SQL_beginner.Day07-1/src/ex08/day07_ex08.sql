SELECT 
    pe.address, 
    pz.name, 
    COUNT(*) AS count_of_orders
FROM person_order po
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
JOIN person pe ON pe.id = po.person_id
GROUP BY address, pz.name
ORDER BY 
    pe.address ASC, 
    pz.name ASC;

/*
We know personal addresses from our data. 
Let's assume that this person only visits pizzerias 
in his city. 
Write a SQL statement that returns the address, 
the name of the pizzeria, 
and the amount of the person's orders. 
The result should be sorted by address and then 
by restaurant name. 
Please take a look at the sample output data below.

address
name
count_of_orders
*/