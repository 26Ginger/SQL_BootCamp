SELECT 
    COALESCE(p.name, '-') AS person_name, 
    pv.visit_date, 
    COALESCE(pz.name, '-') AS pizzeria_name 
FROM 
    person p
FULL JOIN (
    SELECT * 
    FROM person_visits
    WHERE person_visits.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
) pv
ON 
    p.id = pv.person_id
FULL JOIN 
    pizzeria pz 
ON 
    pz.id = pv.pizzeria_id
ORDER BY 
    person_name ASC,
    visit_date ASC,
    pizzeria_name ASC;

/*
Denied
NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Please write an SQL statement that will 
return the entire list of names of people who 
visited (or did not visit) pizzerias during 
the period from January 1 to January 3, 2022 
on one side and the entire list of names of pizzerias 
that were visited (or did not visit) on the other side. 
The data sample with the required column names is shown below. 
Please note the replacement value '-' for NULL values in the columns person_name and pizzeria_name. 
Please also add the order for all 3 columns.
*/