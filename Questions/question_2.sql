SELECT
    d.month_name, 
    ROUND(CAST(SUM(p.sale_price * o.product_quantity) AS numeric), 2) AS monthly_revenue
FROM
    orders o
    INNER JOIN dim_date d ON d.date = o.order_date
    INNER JOIN dim_product p ON p.product_code = o.product_code
WHERE
    d.year = 2022
GROUP BY
    d.month_name
ORDER BY
    monthly_revenue DESC
LIMIT
    1;