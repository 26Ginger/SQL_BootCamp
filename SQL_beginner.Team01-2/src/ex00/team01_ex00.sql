WITH main AS (
    SELECT
        COALESCE(u.name, 'not defined') AS name,
        COALESCE(u.lastname, 'not defined') AS lastname,
        b."type",
        SUM(b.money) AS volume,
        b.currency_id
    FROM
        balance b
        LEFT JOIN "user" u ON u.id = b.user_id
    GROUP BY
        u.name,
        u.lastname,
        b."type",
        b.currency_id
),
currency_rate AS (
    SELECT
        c.id,
        c.name,
        c.rate_to_usd
    FROM
        currency c
        INNER JOIN (
            SELECT
                id,
                MAX(updated) AS last_updated
            FROM
                currency
            GROUP BY
                id
        ) latest ON c.id = latest.id AND c.updated = latest.last_updated
)
SELECT
    m.name,
    m.lastname,
    m."type",
    m.volume,
    COALESCE(cr.name, 'not defined') AS currency_name,
    COALESCE(cr.rate_to_usd, 1) AS last_rate_to_usd,
    TRIM_SCALE(m.volume * COALESCE(cr.rate_to_usd, 1)) AS total_volume_in_usd
FROM
    main m
    LEFT JOIN currency_rate cr ON m.currency_id = cr.id
ORDER BY
    m.name DESC,
    m.lastname ASC,
    m."type" ASC;
