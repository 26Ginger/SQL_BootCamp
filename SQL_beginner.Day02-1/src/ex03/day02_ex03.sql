-- временная таблица (CTE - Common Table Expressions)
-- умирает с исполнением запроса 
WITH date_range AS (
    SELECT '2022-01-01'::DATE + n AS missing_date
    FROM generate_series(0, 9) n
),

visits_1_2 AS (
    SELECT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2
) 

SELECT 
    date_range.missing_date
FROM 
    date_range
LEFT JOIN 
    visits_1_2
ON 
    date_range.missing_date = visits_1_2.visit_date
WHERE 
    visits_1_2.visit_date IS NULL
ORDER BY 
    date_range.missing_date ASC;

/*
SQL Syntax Construction generate_series(...)
Denied
NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Let's go back to Exercise #01, please rewrite your SQL using the CTE (Common Table Expression) pattern. 
Please go to the CTE part of your "day generator". 
The result should look similar to Exercise #01.

*/