-- Query 3: Top 10 products by revenue
SELECT 
    p.Description,
    ROUND(SUM(f.TotalPrice), 2) AS Revenue,
    SUM(f.Quantity) AS TotalQuantitySold
FROM fact_sales f
JOIN dim_product p ON f.ProductKey = p.ProductKey
GROUP BY p.StockCode, p.Description
ORDER BY Revenue DESC
LIMIT 10;