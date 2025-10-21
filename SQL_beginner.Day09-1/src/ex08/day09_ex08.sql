CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE(fibonacci_number INTEGER) AS $$
          WITH RECURSIVE fibonacci (n,m) AS
          (SELECT 0 AS n, 1 AS m
          UNION ALL
          SELECT m, n + m 
          FROM fibonacci WHERE m < pstop)
    SELECT n
    FROM fibonacci;
$$ LANGUAGE SQL;

SELECT * FROM fnc_fibonacci(1000);
SELECT * FROM fnc_fibonacci();

/*
Write an SQL or pl/pgsql function fnc_fibonacci (it's up to you) that has an input parameter pstop of type integer (default is 10) and the function output is a table of all Fibonacci numbers less than pstop.
To check yourself and call a function, you can make a statement like the one below.

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();
*/