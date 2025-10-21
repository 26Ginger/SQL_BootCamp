SELECT id AS menu_id
FROM menu
WHERE id NOT IN (
    SELECT menu_id
    FROM person_order
)
ORDER BY menu_id;

/*
Denied any type of JOINs
Find all menu identifiers that are not ordered by anyone. 
The result should be sorted by identifier. 
The sample output is shown below.
*/