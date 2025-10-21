SELECT 
    intersect_data.action_date,
    person.name AS person_name
FROM (
    SELECT 
        order_date AS action_date,
        person_id
    FROM 
        person_order

    INTERSECT 

    SELECT 
        visit_date AS action_date,
        person_id
    FROM 
        person_visits
) AS intersect_data
JOIN person 
ON intersect_data.person_id = person.id
ORDER BY 
    intersect_data
  .action_date ASC, 
    person.name DESC;


/*
Let's go back to Exercise #03 and modify our SQL statement to return person names 
instead of person identifiers and change the order by action_date in ascending mode and then 
by person_name in descending mode. Take a look at the sample data below.
*/