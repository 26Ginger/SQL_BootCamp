SELECT 
    p1.name AS person_name1, 
    p2.name AS person_name2, 
    p1.address AS common_address
FROM 
    person AS p1
JOIN 
    person AS p2 
ON 
    p1.address = p2.address 
    AND p1.id > p2.id
ORDER BY 
    person_name1 ASC, 
    person_name2 ASC, 
    common_address ASC;
    
/*
Find the names of people who live at the same address. 
Make sure the result is sorted by 1st person's name, 
2nd person's name, and shared address. 
The data sample is shown below. 
Make sure your column names match the column names below.
*/