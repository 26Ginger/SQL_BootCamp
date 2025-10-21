(
    SELECT pz.name AS pizzeria_name
    FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    WHERE p.gender = 'female'
    EXCEPT
    SELECT pz.name
    FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    WHERE p.gender = 'male'
)
UNION
(
    SELECT pz.name AS pizzeria_name
    FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    WHERE p.gender = 'male'
    EXCEPT
    SELECT pz.name
    FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    WHERE p.gender = 'female'
)
ORDER BY pizzeria_name;


/*
Find a union of pizzerias that have orders 
from either women or men. 
In other words, you should find a set of 
names of pizzerias that have been ordered 
only by women and make "UNION" 
operation with set of names of pizzerias 
that have been ordered only by men. 
Please be careful with word "only" 
for both genders. 
For all SQL operators with sets 
don't store duplicates (UNION, EXCEPT, INTERSECT).  
Please sort a result by the name of the pizzeria. The sample data is shown below.
*/