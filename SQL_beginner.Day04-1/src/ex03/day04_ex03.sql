SELECT 
    g.generated_date AS missing_date
FROM 
    v_generated_dates g
LEFT JOIN 
    person_visits v 
ON 
    g.generated_date = v.visit_date
WHERE 
    v.visit_date IS NULL
ORDER BY 
    missing_date;

/*
Write a SQL statement that returns missing days 
for people's visits in January 2022. 
Use the v_generated_dates view for this task 
and sort the result by the missing_date column. 
The sample data is shown below.
*/