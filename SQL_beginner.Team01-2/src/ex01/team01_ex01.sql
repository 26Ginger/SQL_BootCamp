-- DWH Data Warehouse
-- ETL (Extract → Transform → Load) vs  ELT (Extract → Load → Transform) 
-- SCV Single Consistent View  Единое согласованное представление данных

-- DELETE FROM currency 
-- WHERE id = 100 
-- AND updated IN ('2022-01-01 13:29', '2022-01-08 13:29');

-- INSERT INTO currency VALUES (100, 'EUR', 0.85, '2022-01-01 13:29'); 
-- INSERT INTO currency VALUES (100, 'EUR', 0.79, '2022-01-08 13:29');

SELECT
    total.name,
    total.lastname,
    currency_name,
    money * rate_to_usd AS currency_in_usd
FROM
    (
        SELECT
            COALESCE(u.name, 'not defined') AS name,
            COALESCE(u.lastname, 'not defined') AS lastname,
            c.name AS currency_name,
            money,
            COALESCE(
                (
                    SELECT
                        rate_to_usd
                    FROM
                        currency c
                    WHERE
                        balance.currency_id = c.id
                        and c.updated < balance.updated
                    ORDER BY
                        c.updated desc
                    LIMIT
                        1
                ),
                (
                    SELECT
                        rate_to_usd
                    FROM
                        currency c
                    WHERE
                        balance.currency_id = c.id
                        and c.updated > balance.updated
                    ORDER BY
                        c.updated asc
                    LIMIT
                        1
                )
            ) AS rate_to_usd
        FROM
            balance
            INNER JOIN (
                SELECT
                    c.id,
                    c.name
                FROM
                    currency c
                GROUP BY
                    c.id,
                    c.name
            ) AS c ON c.id = balance.currency_id
            LEFT JOIN "user" u ON u.id = balance.user_id
    ) AS total
ORDER BY
    name desc,
    lastname,
    currency_name;