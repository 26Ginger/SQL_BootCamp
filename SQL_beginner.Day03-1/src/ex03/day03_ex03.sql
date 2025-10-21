(
    SELECT pz.name AS pizzeria_name
    FROM person p
    JOIN person_visits pv ON p.id = pv.person_id
    JOIN 
        pizzeria pz 
        ON pz.id = pv.pizzeria_id
    WHERE p.gender = 'female'
    EXCEPT ALL
    SELECT pz.name
    FROM person p
    JOIN 
        person_visits pv 
        ON p.id = pv.person_id
    JOIN 
        pizzeria pz
        ON pz.id = pv.pizzeria_id
    WHERE p.gender = 'male'
)
UNION ALL
(
    SELECT pz.name
    FROM person p
    JOIN 
        person_visits pv 
        ON p.id = pv.person_id
    JOIN 
        pizzeria pz 
        ON pz.id = pv.pizzeria_id
    WHERE p.gender = 'male'
    EXCEPT ALL
    SELECT pz.name
    FROM person p
    JOIN 
        person_visits pv 
        ON p.id = pv.person_id
    JOIN 
        pizzeria pz 
        ON pz.id = pv.pizzeria_id
    WHERE p.gender = 'female'
)
ORDER BY pizzeria_name;




/*
Please find pizzerias that have been visited 
more often by women or by men. 
Save duplicates for any SQL operators with sets 
(UNION ALL, EXCEPT ALL, INTERSECT ALL constructions). 
Please sort a result by the name of the pizzeria. The sample data is shown below.
*/