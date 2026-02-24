-- Query 5: Average order value (AOV) – only countries with decent data
SELECT 
    c.Country,
    ROUND(SUM(f.TotalPrice) / COUNT(DISTINCT f.Invoice), 2) AS AvgOrderValue,
    COUNT(DISTINCT f.Invoice) AS OrderCount
FROM fact_sales f
JOIN dim_customer c ON f.CustomerKey = c.CustomerKey
GROUP BY c.Country
HAVING OrderCount >= 30
ORDER BY AvgOrderValue DESC;