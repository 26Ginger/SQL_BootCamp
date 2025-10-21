--/* 
WITH RECURSIVE tour AS (
    SELECT 
        point1 AS current_city,
        point2 AS next_city,
        ARRAY[point1, point2]::VARCHAR[] AS visited,
        cost AS total_cost
    FROM nodes
    WHERE point1 = 'a'

    UNION ALL

    SELECT 
        t.next_city AS current_city,
        n.point2 AS next_city,
        t.visited || n.point2 AS visited,
        t.total_cost + n.cost AS total_cost
    FROM tour t
    JOIN nodes n 
      ON t.next_city = n.point1
    WHERE NOT n.point2 = ANY(t.visited)
),
result_path AS (
    SELECT
        array_append(tour.visited, 'a') AS tour, 
        tour.total_cost + (SELECT cost FROM nodes WHERE point1 = tour.next_city AND point2 = 'a') AS cost
    FROM tour
    WHERE array_length(tour.visited, 1) = 4
)
SELECT 
    cost AS total_cost,
    '{' || array_to_string(tour, ',') || '}' AS tour
FROM result_path 
WHERE cost = (SELECT min(cost) FROM result_path)

ORDER BY cost, tour; 
--*/

/* 
DROP TABLE IF EXISTS nodes;

CREATE TABLE nodes (
  point1 VARCHAR,
  point2 VARCHAR,
  cost INT
);

INSERT INTO nodes
VALUES 
('a', 'b', 10),
('b', 'a', 10),
('b', 'c', 35),
('c', 'b', 35),
('c', 'a', 15),
('a', 'c', 15),
('d', 'a', 20),
('a', 'd', 20),
('d', 'b', 25),
('b', 'd', 25),
('d', 'c', 30),
('c', 'd', 30);

SELECT * FROM nodes; 
*/

/*
Take a look at the Graph on the left. 
There are 4 cities (a, b, c and d) 
and arcs between them with costs (or taxes). 
Actually, the cost is (a,b) = (b,a).

Please create a table with named nodes 
using structure {point1, point2, cost} 
and fill data based on a picture 
(remember there are direct and reverse tour 
between 2 nodes). 
Please write a SQL statement that returns 
all tour (aka tour) with minimum travel cost 
if we start from city "a". 
Remember, you need to find the cheapest way 
to visit all cities and return to your starting point. 
For example, the tour looks like a -> b -> c -> d -> a.

Below is an example of the output data. 
Please sort the data by total_cost and then by tour.
total_cost	tour
80	{a,b,d,c,a}
*/

