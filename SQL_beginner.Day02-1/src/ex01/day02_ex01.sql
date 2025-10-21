SELECT missing_dates.visit_date AS missing_date
FROM (
    SELECT '2022-01-01'::DATE + n AS visit_date
    FROM generate_series(0, 9) n
) AS missing_dates
LEFT JOIN person_visits pv
    ON missing_dates.visit_date = pv.visit_date
    AND (pv.person_id = 1 OR pv.person_id = 2)
WHERE pv.visit_date IS NULL
ORDER BY missing_dates.visit_date ASC;

/*
Denied 
NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Please write a SQL statement that returns 
the missing days from January 1 through 
January 10, 2022 (including all days) 
for visits by people with identifiers 1 or 2 
(i.e., days missed by both). 
Please order by visit days in ascending mode. 
The sample data with column names is shown below.
*/