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
ORDER BY cost, tour;




