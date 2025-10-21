(
    SELECT pz.name
    FROM pizzeria pz
    JOIN person_visits pv ON pz.id = pv.pizzeria_id
    JOIN person p ON p.id = pv.person_id
    WHERE p.name = 'Andrey'
    ORDER BY pz.name
)
EXCEPT
(
    SELECT pz.name
    FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    WHERE p.name = 'Andrey'
)

/*
Write an SQL statement that returns a 
list of pizzerias that Andrey visited but did not order from. 
Please order by the name of the pizzeria. 
The sample data is shown below.
*/