SELECT
    s.store_type AS "Store Type",
    CAST(SUM(p.sale_price * o.product_quantity) AS numeric) AS "Total Sales",
    CAST((SUM(p.sale_price * o.product_quantity) / SUM(SUM(p.sale_price * o.product_quantity)) OVER ()) * 100 AS numeric) AS "Percentage of Total Sales",
    COUNT(o.order_date_uuid) AS "Total Orders"
FROM
    orders o
    INNER JOIN dim_product p ON p.product_code = o.product_code
    INNER JOIN dim_store s ON s.store_code = o.store_code
GROUP BY
    s.store_type;