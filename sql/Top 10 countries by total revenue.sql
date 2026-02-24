-- Query 1: Top 10 countries by total revenue
SELECT 
    c.Country,
    ROUND(SUM(f.TotalPrice), 2) AS TotalRevenue,
    COUNT(DISTINCT f.Invoice) AS NumberOfOrders,
    COUNT(DISTINCT f.CustomerKey) AS UniqueCustomers
FROM fact_sales f
JOIN dim_customer c ON f.CustomerKey = c.CustomerKey
GROUP BY c.Country
ORDER BY TotalRevenue DESC
LIMIT 10;