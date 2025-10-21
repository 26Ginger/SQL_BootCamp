SELECT 
    id AS object_id, 
    pizza_name AS object_name
FROM 
    menu

UNION ALL

SELECT 
    id AS object_id, 
    name AS object_name
FROM 
    person

ORDER BY 
    object_id ASC, 
    object_name ASC;

/*
Please write a SQL statement that returns the menu identifier 
and pizza names from the menu table and the person identifier 
and person name from the person table in one global list 
(with column names as shown in the example below) 
ordered by object_id and then by object_name columns.

*/