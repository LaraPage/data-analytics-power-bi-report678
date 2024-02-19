SELECT
    s.store_type,
    ROUND(CAST(SUM(p.sale_price * o.product_quantity) AS numeric), 2) AS total_revenue
FROM
    orders o
    INNER JOIN dim_store s ON s.store_code = o.store_code
    INNER JOIN dim_product p ON p.product_code = o.product_code
    INNER JOIN dim_date d ON d.date = o.order_date
WHERE
    s.country_code = 'DE' -- German stores
    AND d.year = 2022
GROUP BY
    s.store_type
ORDER BY
    total_revenue DESC
LIMIT 1;